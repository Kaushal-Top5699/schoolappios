//
//  StudentDetailsVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 19/09/21.
//

import UIKit
import Charts

class StudentDetailsVC: UIViewController {

    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var rollNoLabel: UILabel!
    @IBOutlet weak var mobNoLabel: UILabel!
    @IBOutlet weak var studentImageVie: UIImageView!
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var phoneOne: UILabel!
    @IBOutlet weak var phoneTwo: UILabel!
    
    @IBOutlet weak var segementController: UISegmentedControl!
    @IBOutlet weak var chartView: LineChartView!
    @IBOutlet weak var viewButton: UIButton!
    @IBOutlet weak var viewThree: UIView!
    
    
    var chossenOption = String()
    var uiManager = UIManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiManager.setBorderAndBgTo(views: [viewOne, viewTwo, viewThree])
        uiManager.setBorderTo(buttons: [viewButton])
        chartView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setValues()
    }
    
    //Add sticky animation
    func setValues() {
        
        var entries = [ChartDataEntry]()
        entries.append(ChartDataEntry(x: Double(1), y: Double(1)))
        entries.append(ChartDataEntry(x: Double(5), y: Double(5)))
        entries.append(ChartDataEntry(x: Double(10), y: Double(10)))
        entries.append(ChartDataEntry(x: Double(12), y: Double(2)))
        entries.append(ChartDataEntry(x: Double(15), y: Double(10)))
        
        let set1 = LineChartDataSet(entries: entries, label: "DataSet 1")
        set1.colors = ChartColorTemplates.material()
        let data = LineChartData(dataSet: set1)
        self.chartView.data = data
        
    }

}
