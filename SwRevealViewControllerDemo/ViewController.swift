//
//  ViewController.swift
//  SwRevealViewControllerDemo
//
//  Created by mac on 26/04/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
   
    var nameArr = ["Appointments", "Call"]
    @IBOutlet weak var tableViewTwo: UITableView!
    @IBOutlet weak var tableViewOne: UITableView!
    @IBOutlet weak var btnBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnBarButton.target = revealViewController()
        btnBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        navigationController?.navigationBar.barTintColor = UIColor.blue
        tabBarController?.tabBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
//extension ViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return nameArr.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! OneTableViewCell
//        
//        cell.lblName.text = nameArr[indexPath.row]
//        //cell.lblNo.text = "\(10)"
//        
//        return cell
//    }
//    
//    
//}

