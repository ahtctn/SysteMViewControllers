//
//  CountryTableViewCell.swift
//  BankUI
//
//  Created by Ahmet Ali ÇETİN on 16.12.2022.
//

import UIKit

class AccountMovementTableView: UITableViewCell {
    
    @IBOutlet weak var customerView: UIView!
    @IBOutlet var customerImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
