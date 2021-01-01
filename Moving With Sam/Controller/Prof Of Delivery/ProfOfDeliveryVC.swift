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
    
    
    var photoLargeView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    var photoAlertSubView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        roundingViews()
        
        showLockAlertView()
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
    
    
    // MARK: - AlertView
    private func showLockAlertView()
    {
        self.view.addSubview(photoLargeView)
        self.view.bringSubviewToFront(photoLargeView)
        photoLargeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        photoLargeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        photoLargeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        photoLargeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        view.addSubview(self.photoLargeView)
        self.photoLargeView.addSubview(photoAlertSubView)
        
        photoAlertSubView.backgroundColor = UIColor(red: 0.47, green: 0.47, blue: 0.47, alpha: 1.00)
        photoAlertSubView.translatesAutoresizingMaskIntoConstraints = false
        photoAlertSubView.leadingAnchor.constraint(equalTo: photoLargeView.leadingAnchor, constant: 30).isActive =  true
        photoAlertSubView.trailingAnchor.constraint(equalTo: photoLargeView.trailingAnchor, constant: -30).isActive =  true
        photoAlertSubView.centerYAnchor.constraint(equalTo: photoLargeView.centerYAnchor).isActive = true
        photoAlertSubView.heightAnchor.constraint(equalToConstant: 200.0).isActive = true
        photoAlertSubView.layer.cornerRadius = 10
        
        let crossBtn  = UIButton()
        crossBtn.translatesAutoresizingMaskIntoConstraints = false
        crossBtn.setImage(UIImage(named: "cross"), for: .normal)
        crossBtn.addTarget(self, action: #selector(hidePhotoAlertView), for:.touchUpInside)
        
        photoAlertSubView.addSubview(crossBtn)
        
        crossBtn.trailingAnchor.constraint(equalTo: photoAlertSubView.trailingAnchor, constant: -24).isActive =  true
        crossBtn.topAnchor.constraint(equalTo: photoAlertSubView.topAnchor, constant: 16).isActive = true
        crossBtn.widthAnchor.constraint(equalToConstant: 49).isActive = true
        crossBtn.heightAnchor.constraint(equalToConstant: 52).isActive = true
        
        
        let cameraBtn  = UIButton()
        cameraBtn.translatesAutoresizingMaskIntoConstraints = false
        cameraBtn.setImage(UIImage(named: "chooseCamera"), for: .normal)
        cameraBtn.addTarget(self, action: #selector(hidePhotoAlertView), for:.touchUpInside)
        
        photoAlertSubView.addSubview(cameraBtn)
        
        cameraBtn.leadingAnchor.constraint(equalTo: photoAlertSubView.leadingAnchor, constant: 24).isActive =  true
        cameraBtn.topAnchor.constraint(equalTo: photoAlertSubView.topAnchor, constant: 46).isActive = true
        cameraBtn.widthAnchor.constraint(equalToConstant: 55).isActive = true
        cameraBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        
        let takePhotoBtn  = UIButton()
        takePhotoBtn.translatesAutoresizingMaskIntoConstraints = false
        takePhotoBtn.addTarget(self, action: #selector(hidePhotoAlertView), for:.touchUpInside)
        takePhotoBtn.titleLabel?.font =  UIFont(name:"Poppins-Regular", size: 14)
        takePhotoBtn.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: UIControl.State.normal)
        takePhotoBtn.setTitle("Take Photo", for: UIControl.State.normal)
        
        photoAlertSubView.addSubview(takePhotoBtn)
        
      //  takePhotoBtn.topAnchor.constraint(equalTo: photoAlertSubView.topAnchor, constant: 46).isActive =  true
        
        takePhotoBtn.centerYAnchor.constraint(equalTo: cameraBtn.centerYAnchor, constant: 0).isActive  = true
        takePhotoBtn.trailingAnchor.constraint(equalTo: photoAlertSubView.trailingAnchor, constant: -24).isActive =  true
        takePhotoBtn.leadingAnchor.constraint(equalTo: photoAlertSubView.leadingAnchor, constant: 10).isActive =  true
        takePhotoBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        let separatorView  = UIView()
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = UIColor.lightGray
        photoAlertSubView.addSubview(separatorView)
        separatorView.leadingAnchor.constraint(equalTo: photoAlertSubView.leadingAnchor, constant: 24).isActive =  true
        separatorView.trailingAnchor.constraint(equalTo: photoAlertSubView.trailingAnchor, constant: -24).isActive =  true

        separatorView.topAnchor.constraint(equalTo: takePhotoBtn.bottomAnchor, constant: 16).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        let galleryBtn  = UIButton()
        galleryBtn.translatesAutoresizingMaskIntoConstraints = false
        galleryBtn.setImage(UIImage(named: "gallery"), for: .normal)
        galleryBtn.addTarget(self, action: #selector(hidePhotoAlertView), for:.touchUpInside)

        photoAlertSubView.addSubview(galleryBtn)

        galleryBtn.leadingAnchor.constraint(equalTo: photoAlertSubView.leadingAnchor, constant: 32).isActive =  true
        galleryBtn.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 15).isActive = true
        galleryBtn.widthAnchor.constraint(equalToConstant: 35).isActive = true
        galleryBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true



        let chooseGalleryBtn  = UIButton()
        chooseGalleryBtn.translatesAutoresizingMaskIntoConstraints = false
        chooseGalleryBtn.addTarget(self, action: #selector(hidePhotoAlertView), for:.touchUpInside)
        chooseGalleryBtn.titleLabel?.font =  UIFont(name:"Poppins-Regular", size: 14)
        chooseGalleryBtn.setTitleColor(UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0), for: UIControl.State.normal)
        chooseGalleryBtn.setTitle("Choose from gallery", for: UIControl.State.normal)

        photoAlertSubView.addSubview(chooseGalleryBtn)

        chooseGalleryBtn.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 15).isActive =  true
        chooseGalleryBtn.trailingAnchor.constraint(equalTo: photoAlertSubView.trailingAnchor, constant: -24).isActive =  true
        chooseGalleryBtn.leadingAnchor.constraint(equalTo: galleryBtn.leadingAnchor, constant: 15).isActive =  true
        chooseGalleryBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true

        
    }
    
    @objc func hidePhotoAlertView()
    {
        self.photoLargeView.removeFromSuperview()
        //statusValue  = 0
        //self.createShiftLargeView.removeFromSuperview()
    }
    @objc func hideLockAlertView()
    {
        self.photoLargeView.removeFromSuperview()
        //statusValue  = 0
        //self.createShiftLargeView.removeFromSuperview()
    }
    
    
}  // end class
