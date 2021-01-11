//
//  ArticleViewController.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 08/01/21.
//

import UIKit
import Alamofire

class ArticleViewController: BaseViewController {

    @IBOutlet weak var listArticles: UITableView!
    
    var articleModel: ArticleModel!
    
    var sources : String!
    var article = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listArticles.delegate = self
        listArticles.dataSource = self
        
        getRequest(url: "/everything?apiKey=\(NewsUrl.API_KEY)&sources=\(sources!)", tag: "articles")
        let nibClass = UINib(nibName: "ArticleTableViewCell", bundle: nil)
        listArticles.register(nibClass, forCellReuseIdentifier: "articlesIdentifier")
    }
    override func onSuccess(data: Data, tag: String) {
        do{
            let decoder = JSONDecoder()
            self.articleModel = try decoder.decode(ArticleModel.self, from:data)
            self.listArticles.reloadData()
        }catch{
            print(error.localizedDescription)
        }
    }

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
    
    extension ArticleViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return articleModel?.articles.count ?? 0
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = listArticles.dequeueReusableCell(withIdentifier: "articlesIdentifier") as! ArticleTableViewCell
            
            let articlesModel: Article = (articleModel?.articles[indexPath.row])!
            cell.articlesLabel.text = articlesModel.content
            
            let articleCat = ArticlesTapGesture(target: self, action: #selector(ArticleViewController.openArticle))
            cell.articlesView.isUserInteractionEnabled = true
            articleCat.articles = articlesModel.url
            cell.articlesView.addGestureRecognizer(articleCat)
            return cell
        }
        
        @objc func openArticle(sender: ArticlesTapGesture){
            let changePass = DetailViewController()
            changePass.url = sender.articles
            changePass.modalPresentationStyle = .fullScreen
            self.present(changePass, animated: true, completion: nil)
        }
}
