//
//  AndroidSecondViewController.swift
//  StudentInformation_4_2_2023
//
//  Created by Mac on 05/02/23.
//

import UIKit

class AndroidSecondViewController: UIViewController{
    
    

    @IBOutlet weak var AndroidTableView: UITableView!
    
    var androidStudent : [AndroidStudent] = [AndroidStudent]()
    var androidThirdViewController : AndroidThirdViewController  = AndroidThirdViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datasourceanddellegate()
        registerXib()
        navigationItem.hidesBackButton = true
    addNavigationButton()
}
func  addNavigationButton(){
    let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonClick))
    navigationItem.rightBarButtonItems = [add]
}
    func registerXib(){
        let nibName = UINib(nibName: "AndroidTableViewCell", bundle: nil)
        self.AndroidTableView.register(nibName, forCellReuseIdentifier: "AndroidTableViewCell")
    }
    func datasourceanddellegate(){
        AndroidTableView.delegate = self
        AndroidTableView.dataSource = self
    }
    @objc func addButtonClick(){
        let athirdVC = self.storyboard?.instantiateViewController(withIdentifier: "AndroidThirdViewController") as! AndroidThirdViewController
        athirdVC.AndroidStudentBackDataPassingDelegate = self
        
        navigationController?.pushViewController(athirdVC, animated: true)
        
    }
}
extension AndroidSecondViewController : AndroidStudentInformationPassingProtocol{
    func backdataPassing(Androidstudent: AndroidStudent) {
        androidStudent.append(Androidstudent)
        AndroidTableView.reloadData()
    }
}
extension AndroidSecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130.0
    }
}
extension AndroidSecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        androidStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let athirdVC1 = self.AndroidTableView.dequeueReusableCell(withIdentifier: "AndroidTableViewCell", for: indexPath) as! AndroidTableViewCell
        
        var eachObjectOfAndroidStudent = androidStudent[indexPath.row]
        athirdVC1.AfullNamelbl.text = eachObjectOfAndroidStudent.fullName
        athirdVC1.AcityNamelbl.text = eachObjectOfAndroidStudent.cityName
        athirdVC1.AphoneNumberlbl.text = eachObjectOfAndroidStudent.phoneNumber
        
        return athirdVC1
    }
    
    
}
