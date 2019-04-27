//
//  PlacesViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 27/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class PlacesViewController: UIViewController {

    @IBOutlet weak var btnBar: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            btnBar.target = self.revealViewController()
            btnBar.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    

}
