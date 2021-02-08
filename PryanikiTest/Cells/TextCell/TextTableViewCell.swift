//
//  TextTableViewCell.swift
//  PryanikiTest
//
//  Created by Aleksey Sultanov on 08.02.2021.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func prepareForReuse() {
        label.text = ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(response: MainResponse) {
        label.text = response.text
    }
}
