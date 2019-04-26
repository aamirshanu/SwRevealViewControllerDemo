//
//  LoginViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 26/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        txtEmail.attributedPlaceholder = NSAttributedString(string: "   Email",
                                                               attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        txtEmail.layer.borderColor = UIColor.white.cgColor
        
        txtPassword.attributedPlaceholder = NSAttributedString(string: "   Password",
                                                            attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        txtPassword.layer.borderColor = UIColor.white.cgColor
        navigationController?.navigationBar.isHidden = true
    }

}
