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

    @IBOutlet weak var assignCollectionView : UICollectionView!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
      //  curveView.roundCorners(corners: [.topLeft, .topRight], radius: 3.0)
        
        searchView.layer.cornerRadius = 10.0;
        searchView.clipsToBounds = true
        
        
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
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
        }
        
        
    
} // end class


