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
        let firsResult = checkResult(num: firstVal.text)
        let secondResult = checkResult(num: secondVal.text)
        let resul = firsResult + secondResult
        return resul
    
    }
    
    func resta() -> Int {
        let firsResult = checkResult(num: firstVal.text)
        let secondResult = checkResult(num: secondVal.text)
        let resul = firsResult - secondResult
        return resul
    }
    
    func checkResult(num: String?) -> Int {
        guard
        let myNum = num,
        let myInt = Int(myNum)
        
        else { return 0 }
        return myInt
    }
    

   
    /*func comprobarTwo()->Int {
        guard
        let mySecondVal = secondVal.text,
        let myInt2 = Int(mySecondVal)
        else { return 0 }
        return myInt2
    }*/
}

