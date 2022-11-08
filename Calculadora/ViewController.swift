//
//  ViewController.swift
//  Calculadora
//
//  Created by Santiago Falcon on 8/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBOutlet weak var labelTxt: UILabel!
    
    @IBOutlet weak var firstVal: UITextField!
    
    @IBOutlet weak var secondVal: UITextField!
    
    @IBAction func sum(_ sender: Any) {
        labelTxt.text = String(sumar())
    }
    @IBAction func rest(_ sender: Any) {
        labelTxt.text = String(resta())
    }
    
    func sumar() -> Int {
        guard
        let myFirstVal = firstVal.text,
        let mySecondVal = secondVal.text,
        let myInt1 = Int(myFirstVal),
        let myInt2 = Int(mySecondVal)
        else { return 0 }
        let resul = myInt1 + myInt2
        return resul
    
    }
    
    func resta() -> Int {
        guard
        let myFirstVal = firstVal.text,
        let mySecondVal = secondVal.text,
        let myInt1 = Int(myFirstVal),
        let myInt2 = Int(mySecondVal)
        else { return 0 }
        let resul = myInt1 - myInt2
        return resul
    
    }
   
}

