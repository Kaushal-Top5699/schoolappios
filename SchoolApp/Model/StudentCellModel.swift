//
//  StudentCellModel.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 19/09/21.
//

import Foundation
import UIKit

struct StudentCellModel {
    
    let studentImage: UIImage
    let studentName: String
    let studentRollNo: String
    let studentClass: String
    
    init(studentImage: UIImage, studentName: String, studentRollNo: String, studentClass: String) {
        self.studentImage = studentImage
        self.studentName = studentName
        self.studentRollNo = studentRollNo
        self.studentClass = studentClass
    }
    
}
