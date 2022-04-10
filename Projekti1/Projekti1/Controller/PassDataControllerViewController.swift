//
//  PassDataControllerViewController.swift
//  Projekti1
//
//  Created by Rion on 4.4.22.


import UIKit
import Photos

class PassDataControllerViewController: UIViewController{
    
    
    
  
    var Shoe : Shoe?

 
   
    @IBOutlet weak var passtext: UILabel!
    @IBOutlet weak var passImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

     
        
      
        passtext.text = Shoe?.title
        passImage.image = UIImage(named: Shoe?.image ?? "")

        
        
    }
    
  
        
    }
    
   






 
    
    
    

    


