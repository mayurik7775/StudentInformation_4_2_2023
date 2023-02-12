//
//  iOSThirdViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class iOSThirdViewController: UIViewController {

    @IBOutlet weak var iosFullNametextField: UITextField!
    @IBOutlet weak var ioscitytextField: UITextField!
    @IBOutlet weak var iosPhoneNumbertextField: UITextField!
    
    var fullName : String = ""
    var cityName : String = ""
    var phonNumber : String = ""
    var iOSstudentObject : iOSStudent?
    
    var iOSStudentBackDataPassingDelegate : iOSStudentInformationPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

    }

    @IBAction func btnClickToPopsaveInfo(_ sender: Any) {
        guard let iOSStudentBackDataPassingDelegate = iOSStudentBackDataPassingDelegate else {
            return
        }
        fullName = iosFullNametextField.text!
        cityName = ioscitytextField.text!
        phonNumber = iosPhoneNumbertextField.text!
        
       var iOSstudentObject = iOSStudent(fullName: fullName, cityName: cityName, phoneNumber: phonNumber)
        
        iOSStudentBackDataPassingDelegate.backdataPassing(iOSstudent: iOSstudentObject)
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
}
