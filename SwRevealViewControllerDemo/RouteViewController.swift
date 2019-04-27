//
//  RouteViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 27/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class RouteViewController: UIViewController {

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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
