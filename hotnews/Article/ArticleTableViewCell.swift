//
//  ArticleTableViewCell.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 10/01/21.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var articlesLabel: UILabel!
    @IBOutlet weak var articlesView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
