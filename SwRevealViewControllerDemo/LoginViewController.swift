//
//  LoginViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 26/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

     let vc = AppDelegate()
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
        txtEmail.setPadding()
        txtPassword.setPadding()
        txtEmail.attributedPlaceholder = NSAttributedString(string: "Email",
                                                               attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        txtEmail.layer.borderColor = UIColor.white.cgColor
        
        txtPassword.attributedPlaceholder = NSAttributedString(string: "Password",
                                                            attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        txtPassword.layer.borderColor = UIColor.white.cgColor
        //navigationController?.navigationBar.isHidden = true
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        
        if txtEmail.text == "test" && txtPassword.text == "123456"{
          
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.switchViewControllers()
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
            navigationController?.pushViewController(vc, animated: true)
            
            
        
        }else{
            print("Error")
        }
    }
}
extension UITextField{
    
    func setPadding(){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
