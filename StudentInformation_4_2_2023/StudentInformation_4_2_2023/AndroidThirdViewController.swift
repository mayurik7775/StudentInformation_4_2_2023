//
//  AndroidThirdViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class AndroidThirdViewController: UIViewController {

    @IBOutlet weak var AndroidfullNametextField: UITextField!
    @IBOutlet weak var AndroidCityNametextField: UITextField!
    @IBOutlet weak var AndroidPhoneNumbertextField: UITextField!
    
    var AfullName : String = ""
    var AcityName : String = ""
    var AphoneNumber : String = ""
    var AndroidStudentObject : AndroidStudent?
    var AndroidStudentBackDataPassingDelegate : AndroidStudentInformationPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    @IBAction func btnClickToSaveInfo(_ sender: Any) {
       guard let androidStudentBackDataPassDelegate = AndroidStudentBackDataPassingDelegate else {
            return
        }
        AfullName = AndroidfullNametextField.text!
        AcityName = AndroidCityNametextField.text!
        AphoneNumber = AndroidPhoneNumbertextField.text!
        
        var AndroidStudentObject = AndroidStudent(fullName: AfullName, cityName: AcityName, phoneNumber: AphoneNumber)
        AndroidStudentBackDataPassingDelegate?.backdataPassing(Androidstudent: AndroidStudentObject)
        navigationController?.popViewController(animated: true)
    }
}
