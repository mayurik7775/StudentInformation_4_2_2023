//
//  iOsViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class iOsViewController: UIViewController {

    @IBOutlet weak var iOSNamelbl: UILabel!
    @IBOutlet weak var iosImge: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnClickToNavigateInfo(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "iosSecondViewController") as! iosSecondViewController
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
