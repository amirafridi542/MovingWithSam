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
        
        
        searchView.layer.shadowColor = UIColor.gray.cgColor
        searchView.layer.shadowOpacity = 0.6
        searchView.layer.shadowOffset = CGSize.zero
        searchView.layer.shadowRadius = 7
        searchView.layer.cornerRadius = 10

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
            
           
            //cell.contentSubView.dropShadow()
            //cell.contentSubView.layer.shadowOffset = .zero
            //cell.contentSubView.layer.shadowRadius = 6
            
            cell.contentSubView.layer.shadowColor = UIColor.lightGray.cgColor
            cell.contentSubView.layer.shadowOpacity = 0.6
            cell.contentSubView.layer.shadowOffset = CGSize.zero
            cell.contentSubView.layer.shadowRadius = 7
            cell.contentSubView.layer.cornerRadius = 10

            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }
        
        
    
} // end class

