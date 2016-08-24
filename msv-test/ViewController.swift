//
//  ViewController.swift
//  msv-test
//
//  Created by HoangTV on 8/23/16.
//  Copyright © 2016 HoangTV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    let person = Person(first: "Hoang", last: "Tran")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameLabel.text = "\(person.fullName)"
    }

    
    @IBAction func renameButton(sender: AnyObject) {
        if let txtName = nameTextField.text{
            person.firstName = txtName
            nameLabel.text = "\(person.fullName)"
        }
    }
    
    @IBAction func loadSecond(sender: AnyObject) {
        
        let str = "HoangTV xin gui loi chao toi cac ban"
        
        performSegueWithIdentifier("goToSecondViewController", sender: str)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if  segue.identifier == "goToSecondViewController" {
            if let secondVC = segue.destinationViewController as? SecondViewController{
                if let theString = sender as? String{
                    secondVC.transferText = theString
                }
            }
        }
    }


}

