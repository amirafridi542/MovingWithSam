//
//  AssignJobVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 31/12/2020.
//

import UIKit

class AssignJobVC: UIViewController {
    
    @IBOutlet weak var curveView : UIView!
    @IBOutlet weak var searchView : UIView!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
      //  curveView.roundCorners(corners: [.topLeft, .topRight], radius: 3.0)
        
        searchView.layer.cornerRadius = 10.0;
        searchView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
} // end class


