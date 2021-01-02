//
//  AssignJobVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 31/12/2020.
//

import UIKit

class AssignJobVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var curveView : UIView!
    @IBOutlet weak var searchView : UIView!
    @IBOutlet weak var topView : UIView!

    @IBOutlet weak var assignCollectionView : UICollectionView!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let height = self.view.bounds.size.height
        var collectionWidth = Int(self.view.bounds.size.width - 40)
        if height < self.view.bounds.size.width  {
            collectionWidth = Int(self.view.bounds.size.height - 40)
        }
        
        let defultt = UserDefaults.standard
        defultt.set(collectionWidth, forKey: "collectionWidth")
        
      //  curveView.roundCorners(corners: [.topLeft, .topRight], radius: 3.0)
        
        let layOutt = self.assignCollectionView.collectionViewLayout as! JobCollectionViewFlow

        layOutt.scrollDirection = .vertical
//       // searchView.dropShadow()
        
        
        
//        searchView.layer.cornerRadius = 8
//        searchView.layer.shadowColor = UIColor.darkGray.cgColor
//        searchView.layer.shadowOpacity = 1
//        searchView.layer.shadowOffset = .zero
//        searchView.layer.shadowRadius = 5
        
        
        
       // topView.bringSubviewToFront(searchView)
       
//        searchView.layer.shadowOpacity = 0.7
//        searchView.layer.shadowOffset = CGSize(width: 3, height: 3)
//        searchView.layer.shadowRadius = 15.0
//        searchView.layer.shadowColor = UIColor.darkGray.cgColor
//        searchView.layer.cornerRadius = 5.0;
//        searchView.clipsToBounds = true
//        searchView.layer.shadowColor = UIColor.gray.cgColor
//        searchView.layer.shadowOpacity = 0.3
//        searchView.layer.shadowOffset = CGSize.zero
//        searchView.layer.shadowRadius = 6
        
        
        
        searchView.layer.cornerRadius = 8
        searchView.layer.shadowColor = UIColor.black.cgColor
        searchView.layer.shadowOpacity = 0.7
        searchView.layer.shadowOffset = CGSize.zero
        searchView.layer.shadowRadius = 4
        searchView.layer.shadowPath = UIBezierPath(rect: searchView.bounds).cgPath
        
      
////        searchView.layer.borderColor = UIColor.lightGray.cgColor
////        searchView.layer.borderWidth = 0.5
//
//
//        searchView.layer.shadowColor = UIColor.black.cgColor
//        searchView.layer.shadowOpacity = 1
//        searchView.layer.shadowOffset = .zero
//        searchView.layer.shadowRadius = 10
        
        
        topView.bringSubviewToFront(searchView)
        assignCollectionView.delegate = self
        assignCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    // MARK : - Collection Delegate Method
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 14
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"AssignJobCollectionCell", for: indexPath) as! AssignJobCollectionCell
            
           
            cell.contentSubView.layer.shadowOpacity = 1
            cell.contentSubView.layer.shadowOffset = .zero
            cell.contentSubView.layer.shadowRadius = 6
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }
        
        
    
} // end class




extension UIView {

   func dropShadow() {
       layer.masksToBounds = false
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOpacity = 01.5
       layer.shadowOffset = CGSize(width: -1, height: 1)
       layer.shadowRadius = 1
       layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
       layer.shouldRasterize = true
       layer.rasterizationScale = UIScreen.main.scale
   }
}
