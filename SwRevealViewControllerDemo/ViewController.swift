//
//  ViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 26/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    
    @IBOutlet weak var tableTwo: UITableView!
    @IBOutlet weak var tableOne: UITableView!
    @IBOutlet weak var btnBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnBarButton.target = revealViewController()
        btnBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

}
extension ViewController :  UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableOne{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            return cell!
        }else if tableView == tableTwo{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            return cell!
        }
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == tableTwo{
            return 2
        }else if tableView == tableOne{
            return 2
        }
        return 1
    }
}
extension ViewController: UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

