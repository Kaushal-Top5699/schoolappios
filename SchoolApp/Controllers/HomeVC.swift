//
//  HomeVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var homeCellModel = [HomeCellModel]()
    private let spacing:CGFloat = 5.0
    var choosenCell = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register(UINib(nibName: "HomeScreenCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        self.collectionView?.collectionViewLayout = layout

        homeCellModel.append(HomeCellModel(title: "Students"))
        homeCellModel.append(HomeCellModel(title: "Teachers"))
        homeCellModel.append(HomeCellModel(title: "Manage Classes"))
    }

}

extension HomeVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeCellModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let homeCellModel = homeCellModel[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeScreenCell
        cell.cellName.text = homeCellModel.title
        return cell
    }
}

extension HomeVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfItemsPerRow:CGFloat = 2
        let spacingBetweenCells:CGFloat = 5
                
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
                
        if let collection = self.collectionView{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
            return CGSize(width: width, height: width)
        } else {
            return CGSize(width: 0, height: 0)
        }
    }
}

extension HomeVC:  UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let homeCellModel = homeCellModel[indexPath.row]
        choosenCell = homeCellModel.title
        
        if choosenCell == "Manage Classes" {
            self.performSegue(withIdentifier: "toManageClassesVC", sender: nil)
        } else {
            self.performSegue(withIdentifier: "toStuTeaVC", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStuTeaVC" {
            let destinationVC = segue.destination as! ViewStuTeaVC
            destinationVC.choosenTitle = choosenCell
        } else if segue.identifier == "toManageClassesVC" {
            let destinationVC = segue.destination as! ManageClassesVC
            destinationVC.choosenManager = choosenCell
        }
    }
    
}
