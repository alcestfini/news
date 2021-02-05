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

    }

    @IBAction func readButton(_ sender: Any) {
        
            let read = CategoriesViewController()
        read.modalPresentationStyle = .fullScreen
            self.present(read, animated: true, completion: nil)
    }
    
    

}
