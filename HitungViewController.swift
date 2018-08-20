//
//  HitungViewController.swift
//  firstApp
//
//  Created by omrobbie on 19/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class HitungViewController: UIViewController {

    @IBOutlet weak var txtInput1: UITextField!
    @IBOutlet weak var txtInput2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnHitung(_ sender: Any) {
        let data1 = txtInput1.text
        let data2 = txtInput2.text
        
        let convert1 = Double(data1!)
        let convert2 = Double(data2!)
        
        let hasil = convert1! + convert2!
        
        let alert = UIAlertController(title: "Hasil hitung", message: "Hasil perhitungan \(convert1!) + \(convert2!) = \(hasil)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}
