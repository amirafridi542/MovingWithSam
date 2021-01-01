//
//  ProfOfDeliveryVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 01/01/2021.
//

import UIKit

class ProfOfDeliveryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoCollectionView: UICollectionView!
    @IBOutlet weak var finishJobView: UIView!
    @IBOutlet weak var addcustomerSignatureSubView: UIView!
    @IBOutlet weak var addPodSubView: UIView!
    @IBOutlet weak var addPodBtnView: UIView!
    @IBOutlet weak var addSignatureBtnView: UIView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        roundingViews()
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Rounding Views
    func roundingViews()
    {
        self.finishJobView.layer.cornerRadius = self.finishJobView.frame.size.height / 2
        self.finishJobView.clipsToBounds = true
        
        self.addcustomerSignatureSubView.layer.cornerRadius = 10.0
        self.addcustomerSignatureSubView.clipsToBounds = true
        
        self.addPodSubView.layer.cornerRadius = 10.0
        self.addPodSubView.clipsToBounds = true
        
        self.addSignatureBtnView.layer.cornerRadius = 10.0
        self.addSignatureBtnView.clipsToBounds = true

        self.addPodBtnView.layer.cornerRadius = 10.0
        self.addPodBtnView.clipsToBounds = true
    }
    
// MARK : - Collection Delegate Method
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"PhotoCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}  // end class
