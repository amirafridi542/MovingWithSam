//
//  CancelJobVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 04/01/2021.
//

import UIKit

class CancelJobVC: UIViewController {

    @IBOutlet weak var subView : UIView!
    @IBOutlet weak var cancelJobView : UIView!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        subView.backgroundColor = UIColor.white
        
        cancelJobView.layer.cornerRadius = cancelJobView.frame.size.height / 2
        cancelJobView.clipsToBounds = true
        
        subView.layer.cornerRadius = 10
        subView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
} // end class
