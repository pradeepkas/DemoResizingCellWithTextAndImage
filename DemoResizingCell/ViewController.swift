//
//  ViewController.swift
//  DemoResizingCell
//
//  Created by appstudioz on 6/6/17.
//  Copyright © 2017 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tblView.estimatedRowHeight = 150

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath)
        
        
        let imageView = cell.viewWithTag(200) as! UIImageView
        let lblText = cell.viewWithTag(300) as! UILabel
        
        if indexPath.item == 0{
            imageView.image = UIImage(named: "1")
            lblText.text = "sdfsafasdfasfasfsfasfasfsfasfasf"
        }
        if indexPath.item == 1{
            imageView.image = UIImage(named: "2")
            lblText.text = "sdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasf"
        }
        if indexPath.item == 2{
            imageView.image = UIImage(named: "3")
            lblText.text = "sdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasfsdfsafasdfasfasfsfasfasfsfasfasf"
        }
        
        
        
        return cell
    }
    
    
}

