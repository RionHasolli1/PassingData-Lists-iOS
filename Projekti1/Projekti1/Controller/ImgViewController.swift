//
//  ImgViewController.swift
//  Projekti1
//
//  Created by Rion on 5.4.22.
//

import UIKit
import Photos

class ImgViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    
  
    @IBOutlet weak var imageView: UIImageView!
    
    let imagepicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()

        imagepicker.delegate = self
        imagepicker.sourceType = .photoLibrary
        
        
        PHPhotoLibrary.requestAuthorization{(response) in
            print("u aprovu loadimi")
        }
        
      
    }
    
    func isPermission()->Bool{
        
        let auth = PHPhotoLibrary.authorizationStatus()
        if(auth == .authorized){
            
            return true
        }
    
        return false
    }

    @IBAction func buttonclicked(_ sender: Any) {
        
        if(isPermission()){
            
            present(imagepicker, animated: true, completion: nil)
    }
    
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let selectedImage = info[UIImagePickerController.InfoKey.originalImage]
        as! UIImage
        imageView.image = selectedImage
        imagepicker.dismiss(animated: true, completion: nil)
    }

}
