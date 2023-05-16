//
//  FriendsTableViewCell.swift
//  FriendsApp
//
//  Created by Rozheen Nersisyan Malhami on 2/25/23.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    let myModel = FriendsModel()
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
