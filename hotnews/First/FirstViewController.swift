//
//  FirstViewController.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 18/01/21.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func readButton(_ sender: Any) {
        
            let read = CategoriesViewController()
        read.modalPresentationStyle = .fullScreen
            self.present(read, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
