//
//  iOSTableViewCell.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class iOSTableViewCell: UITableViewCell {

    @IBOutlet weak var IfullNamelbl: UILabel!
    @IBOutlet weak var IcityyNmelbl: UILabel!
    @IBOutlet weak var IphoneNumberlbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
