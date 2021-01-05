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
    
    func moveToHomeVC()
    {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

               let sw = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
               self.view.window?.rootViewController = sw
            let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "AssignJobVC") as! AssignJobVC

               let navigationController = UINavigationController(rootViewController: destinationController)
               sw.pushFrontViewController(navigationController, animated: true)
        
    }
    @IBAction func userSigning(_ sender: Any)
    {
        moveToHomeVC()
    }


}  // end class

