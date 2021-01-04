//
//  LoginVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 30/12/2020.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var loginView : UIView!

    
    @IBOutlet weak var emailTxtField : UITextField!
    @IBOutlet weak var passwordTxtField : UITextField!

    @IBOutlet weak var passwordGoodImgView : UIImageView!
    @IBOutlet weak var emailGoodImgView : UIImageView!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()


        loginView.layer.cornerRadius = self.loginView.frame.size.height / 2;
        loginView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    


}  // end class

