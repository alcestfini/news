//
//  SourceViewController.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 08/01/21.
//

import UIKit
import Alamofire

class SourceViewController: BaseViewController {
    @IBOutlet weak var listCategories: UITableView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    var category : String!
    var sourceModel : SourceModel!
    var articleModel : ArticleModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listCategories.delegate = self
        listCategories.dataSource = self
        
        getRequest(url: "/sources?apiKey=\(NewsUrl.API_KEY)&category=\(category!)", tag: "sources")
        let nibClass = UINib(nibName: "SourcesTableViewCell", bundle: nil)
        listCategories.register(nibClass, forCellReuseIdentifier: "sourcesIdentifier")
    
    }
    override func onSuccess(data: Data, tag: String) {
        do{
            let decoder = JSONDecoder()
            self.sourceModel = try decoder.decode(SourceModel.self, from:data)
            self.listCategories.reloadData()
            
        }catch{
            print(error.localizedDescription)
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension SourceViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceModel?.sources.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listCategories.dequeueReusableCell(withIdentifier: "sourcesIdentifier") as! SourcesTableViewCell
        
        let sourcesModel: Source = (sourceModel?.sources[indexPath.row])!
        cell.sourcesText.text = sourcesModel.name
        
        
        let sourcesCat = SourcesTapGesture(target: self, action: #selector(SourceViewController.openNews))
        cell.sourcesView.isUserInteractionEnabled = true
        sourcesCat.sources = sourcesModel.id
        cell.sourcesView.addGestureRecognizer(sourcesCat)
        
        return cell
    }
    
    @objc func openNews(sender: SourcesTapGesture){
        let changePass = ArticleViewController()
        changePass.sources = sender.sources
        changePass.modalPresentationStyle = .fullScreen
        self.present(changePass, animated: true, completion: nil)
    }
}
