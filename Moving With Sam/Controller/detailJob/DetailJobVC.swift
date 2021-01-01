//
//  DetailJobVC.swift
//  Moving With Sam
//
//  Created by Amir Khan on 01/01/2021.
//

import UIKit

class DetailJobVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
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
        
        itemTableView.delegate = self
        itemTableView.dataSource = self
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

    callView.layer.cornerRadius = 5.0
    callView.clipsToBounds = true
    callView.layer.borderWidth = 0.5
    callView.layer.borderColor = UIColor.lightGray.cgColor
    
    
    locationView.layer.cornerRadius = 5.0
    locationView.clipsToBounds = true
    locationView.layer.borderWidth = 0.5
    locationView.layer.borderColor = UIColor.lightGray.cgColor
}
    
    // MARK: - Table Delegate Method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell") as! ItemTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66.0
    }
    
} // end class
