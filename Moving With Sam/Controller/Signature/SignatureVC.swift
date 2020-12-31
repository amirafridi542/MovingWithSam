//
//  SignatureVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 31/12/2020.
//

import UIKit
import SwiftSignatureView

class SignatureVC: UIViewController {

    @IBOutlet var closedView: UIView!
    @IBOutlet var saveView: UIView!

    @IBOutlet weak var signatureView: SwiftSignatureView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //signatureView.signature()

        self.roundingView()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - RoundingView
    func roundingView(){
        
        closedView.layer.cornerRadius = closedView.frame.size.height / 2
        closedView.clipsToBounds = true
        
        saveView.layer.cornerRadius = saveView.frame.size.height / 2
        saveView.clipsToBounds = true
        
        signatureView.layer.cornerRadius = 05.0
        signatureView.clipsToBounds = true
        signatureView.layer.borderWidth = 0.5
        signatureView.layer.borderColor = UIColor.gray.cgColor
        
        
    }

    @IBAction func closedSignature(_ sender: Any)
    {
        signatureView.clear()
    }
    
    @IBAction func saveSignature(_ sender: Any) {
       let image = signatureView.getCroppedSignature()
        

    }


} // end class
