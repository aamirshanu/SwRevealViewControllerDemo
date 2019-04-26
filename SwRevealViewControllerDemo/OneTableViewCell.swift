//
//  OneTableViewCell.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 26/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class OneTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNo: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
