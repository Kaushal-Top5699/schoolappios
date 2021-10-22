//
//  StuTeaListVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 19/09/21.
//

import UIKit

class StuTeaListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var students = [StudentCellModel]()
    var choosenOption = String()
    var choosenCell = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "StudentCell", bundle: nil), forCellReuseIdentifier: "StudentCell")
        setDemoArray()
    }

    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func setDemoArray() {
        students.append(StudentCellModel(studentImage: #imageLiteral(resourceName: "testAvatar"), studentName: "Kaushal Topinkatti B", studentRollNo: "877", studentClass: "12th"))
        students.append(StudentCellModel(studentImage: #imageLiteral(resourceName: "testAvatar"), studentName: "Riya S.K", studentRollNo: "900", studentClass: "12th"))
        students.append(StudentCellModel(studentImage: #imageLiteral(resourceName: "testAvatar"), studentName: "Akhilesh Yadav", studentRollNo: "800", studentClass: "11th"))
        students.append(StudentCellModel(studentImage: #imageLiteral(resourceName: "testAvatar"), studentName: "Ranjeet Singh", studentRollNo: "899", studentClass: "10th"))
        students.append(StudentCellModel(studentImage: #imageLiteral(resourceName: "testAvatar"), studentName: "Shreya K", studentRollNo: "875", studentClass: "12th"))
    }
}

extension StuTeaListVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        if choosenOption == "View All Students" {
            let student = students[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
            
            cell.cellView.layer.cornerRadius = 8
            cell.studentImageView.image = student.studentImage
            cell.studentNameLabel.text = student.studentName
            cell.studentRollNoLabel.text = student.studentRollNo
            cell.classLabel.text = student.studentClass
            
            return cell
        }
        
        return cell
        
    }
}

extension StuTeaListVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = students[indexPath.row]
        choosenCell = student.studentName
        self.performSegue(withIdentifier: "toStuDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStuDetailsVC" {
            let destinationVC = segue.destination as! StudentDetailsVC
            destinationVC.chossenOption = choosenCell
        }
    }
}
