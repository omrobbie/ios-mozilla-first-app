//
//  ViewController.swift
//  firstApp
//
//  Created by omrobbie on 19/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButton(_ sender: Any, forEvent event: UIEvent) {
        let touch = event.allTouches!.first!
        var alert:UIAlertController
        
        if touch.tapCount == 0 {
            alert = UIAlertController(title: "Alert", message: "Long click", preferredStyle: .alert)
        } else {
            alert = UIAlertController(title: "Alert", message: "Normal click", preferredStyle: .alert)
        }
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

