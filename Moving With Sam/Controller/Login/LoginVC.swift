//
//  LoginVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 30/12/2020.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var loginView : UIView!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()


        loginView.layer.cornerRadius = self.loginView.frame.size.height / 2;
        loginView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    


}
