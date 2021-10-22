//
//  ViewStuTeaVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class ViewStuTeaVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var choosenTitle = String()
    var options = [String]()
    var choosenCell = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MClassCell", bundle: nil), forCellReuseIdentifier: "ClassCell")
        titleLabel.text = choosenTitle
        listingOptions(choice: choosenTitle)
        
    }

    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    private func listingOptions(choice: String) {
        
        if choice == "Students" {
            
            options.append("View All Students")
            options.append("Add A New Student")
            options.append("Notify All Students")
            options.append("Notify A Student")
            
        } else {
            
            options.append("View All Teachers")
            options.append("Add A New Teacher")
            options.append("Notify All Teachers")
            options.append("Notify A Teacher")
            
        }
        
    }
}


extension ViewStuTeaVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let options = self.options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell", for: indexPath) as! MClassCell
        cell.optionCell.layer.cornerRadius = 8
        cell.optionLable.text = options
        return cell
    }
}

extension ViewStuTeaVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let option = options[indexPath.row]
        choosenCell = option
        self.performSegue(withIdentifier: "toListStuTeaVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListStuTeaVC" {
            let destinationVC = segue.destination as! StuTeaListVC
            destinationVC.choosenOption = choosenCell
        }
    }
}
