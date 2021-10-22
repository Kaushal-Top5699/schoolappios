//
//  ManageClassesVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 19/09/21.
//

import UIKit

class ManageClassesVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var choosenManager = String()
    var options = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ManageClassesCell", bundle: nil), forCellReuseIdentifier: "ManageClassesCell")
        optionListing()
    }
    
    private func optionListing() {
        options.append("View All Classes")
        options.append("Add A New Class")
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

extension ManageClassesVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let options = self.options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManageClassesCell", for: indexPath) as! ManageClassesCell
        cell.cellCiew.layer.cornerRadius = 8
        cell.optionLabel.text = options
        return cell
    }
}
