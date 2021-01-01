//
//  DetailJobVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 01/01/2021.
//

import UIKit

class DetailJobVC: UIViewController {

    
    @IBOutlet weak var deilverView : UIView!
    @IBOutlet weak var callView : UIView!
    @IBOutlet weak var locationView : UIView!
    @IBOutlet weak var startJobView : UIView!
    @IBOutlet weak var addPODView : UIView!
    @IBOutlet weak var cancelJobView : UIView!

    @IBOutlet weak var cancelAddJobView : UIView!

    
    
    @IBOutlet weak var itemTableView : UITableView!

    
    // MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        roundingView()
        // Do any additional setup after loading the view.
    }
    
func roundingView()
{
    deilverView.layer.cornerRadius = 10.0
    deilverView.clipsToBounds = true
 
    startJobView.layer.cornerRadius = self.startJobView.frame.size.height / 2
    startJobView.clipsToBounds = true
    
    
    addPODView.layer.cornerRadius = self.addPODView.frame.size.height / 2
    addPODView.clipsToBounds = true
    
    cancelJobView.layer.cornerRadius = self.cancelJobView.frame.size.height / 2
    cancelJobView.clipsToBounds = true

    
    
    
}
    
    
} // end class
