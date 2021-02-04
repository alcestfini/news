//
//  SourcesTableViewCell.swift
//  hotnews
//
//  Created by Seraphina Tatiana   on 08/01/21.
//

import UIKit
import MaterialComponents.MaterialCards

class SourcesTableViewCell: UITableViewCell {
    @IBOutlet weak var sourcesView: MDCCard!
    @IBOutlet weak var sourcesText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
