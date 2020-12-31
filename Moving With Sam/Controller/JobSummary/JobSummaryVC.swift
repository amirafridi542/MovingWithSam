//
//  JobSummaryVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 31/12/2020.
//

import UIKit

class JobSummaryVC: UIViewController {

    @IBOutlet var roundViews: [UIView]!
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
        for var i in 0..<self.roundViews.count {
            
            let view = self.roundViews[i]
            view.layer.cornerRadius = view.frame.size.height / 2
            view.clipsToBounds = true
            
            i  +=  1
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
