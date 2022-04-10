//
//  LoginViewController.swift
//  Projekti1
//
//  Created by Rion on 5.4.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var forgetText: UIView!
    @IBOutlet weak var password1: UITextField!
    
    @IBOutlet weak var username1: UITextField!
    @IBOutlet weak var view1: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        view1.layer.cornerRadius = 7
         username1.layer.borderWidth = 1
         password1.layer.borderWidth = 1
         password1.layer.cornerRadius = 7
         username1.layer.cornerRadius = 7
         username1.layer.borderColor = .init(red: 0.25, green: 0.55, blue: 0.85, alpha: 1.0)
        
   
         
         password1.layer.borderColor = .init(red: 0.25, green: 0.55, blue: 0.85, alpha: 1.0)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let firstVC = segue.destination as? HomeViewController else { return }
        firstVC.firstname = username1.text
        
        guard let firstVC2 = segue.destination as? HomeViewController else { return }
            firstVC2.password = password1.text
    }

   
}
