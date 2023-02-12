//
//  iosSecondViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class iosSecondViewController: UIViewController {

    @IBOutlet weak var iosTableView: UITableView!
    
    var iosStudents : [iOSStudent] = [iOSStudent]()
    
    var iOSthirdViewController : iOSThirdViewController = iOSThirdViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iosTableView.delegate = self
        iosTableView.dataSource = self
        registerXib()
        addNavigationButton()
        navigationItem.hidesBackButton = true
    }
    func  addNavigationButton(){
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonClick))
        navigationItem.rightBarButtonItems = [add]
    }
    func registerXib(){
        let nibName = UINib(nibName: "iOSTableViewCell", bundle: nil)
        self.iosTableView.register(nibName, forCellReuseIdentifier: "iOSTableViewCell")
    }
    
    @objc func addButtonClick(){
    print("navigate")
    let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "iOSThirdViewController") as! iOSThirdViewController
        
        thirdVC.iOSStudentBackDataPassingDelegate = self
        
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
}
extension iosSecondViewController: iOSStudentInformationPassingProtocol{
    func backdataPassing(iOSstudent: iOSStudent) {
        iosStudents.append(iOSstudent)
        iosTableView.reloadData()
    }
}
extension iosSecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130.0
    }
}
extension iosSecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iosStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let iosstudenttableviewCell = self.iosTableView.dequeueReusableCell(withIdentifier: "iOSTableViewCell", for: indexPath) as! iOSTableViewCell
        
        var eachObjectOfiOSStudent = iosStudents[indexPath.row]
        iosstudenttableviewCell.IfullNamelbl.text = eachObjectOfiOSStudent.fullName
        iosstudenttableviewCell.IcityyNmelbl.text = eachObjectOfiOSStudent.cityName
        iosstudenttableviewCell.IphoneNumberlbl.text = eachObjectOfiOSStudent.phoneNumber
        
        return iosstudenttableviewCell
    }
    
    
}
