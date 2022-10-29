//
//  ViewController.swift
//  Calculator
//  Akhil Surendran,  I am an IOS developer and /Users/ddukk15/Downloads/Calculator/Calculator/ViewController.swifti want become an developer a busness man and become rech
//  Created by Akhil surendran on 22/09/22.
//

import UIKit

class ViewController: UIViewController {
    public var t1: Int = 0;
    public var op:String = ""
    

    @IBOutlet weak var txtfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func numbers(_ sender: UIButton) {
        if let text = sender.titleLabel?.text {
            txtfield.text?.append(text)
            
        }
        
    }
    @IBAction func clear(_ sender: Any) {
        txtfield.text = ""
    }
    
    @IBAction func plusorminus(_ sender: Any) {
    }
    
    @IBAction func percent(_ sender: Any) {
    }
    
    @IBAction func divide(_ sender: Any) {
        t1 = Int(txtfield.text!) ?? 0
        print(t1)
        op = "/"
        txtfield.text = ""
    }
    
    @IBAction func multiply(_ sender: Any) {
        t1 = Int(txtfield.text!) ?? 0
        print(t1)
        op = "*"
        txtfield.text = ""
    }
    
    
    @IBAction func plus(_ sender: Any) {
        t1 = Int(txtfield.text!) ?? 0
        print(t1)
        op = "+"
        txtfield.text = ""
    }
    @IBAction func minus(_ sender: Any) {
        t1 = Int(txtfield.text!) ?? 0
        print(t1)
        op = "-"
        txtfield.text = ""
    }
    
    
    @IBAction func dot(_ sender: Any) {
        
    }
    
    @IBAction func equalss(_ sender: Any) {
        let t2 = Int(txtfield.text!) ?? 0
        print(t2)
        switch op {
        case "+" : let sum1 = t1+t2
            txtfield.text = String(sum1)
        case "-" : let sub1 = t1-t2
            txtfield.text = String(sub1)
        case "*" : let mul1 = t1*t2
            txtfield.text = String(mul1)
        case "/" : let div1:Float = Float(t1/t2)
            print(div1)
            txtfield.text = String(div1)
        default: print("Invalid")
        
        }
    }
}

