//
//  AndroidViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class AndroidViewController: UIViewController {

    @IBOutlet weak var AndroidImage: UIImageView!
    @IBOutlet weak var Androidlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnClickToNavigateAndroidInfo(_ sender: Any) {
        let secondVC2 = self.storyboard?.instantiateViewController(withIdentifier: "AndroidSecondViewController") as! AndroidSecondViewController
        
        navigationController?.pushViewController(secondVC2, animated: true)
    }
}
