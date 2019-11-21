//
//  ViewController.swift
//  CalculatorXE
//
//  Created by Plaaaviit on 13.09.17.
//  Copyright © 2017 Plaaaviit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var Display: UILabel!
    
    @IBOutlet weak var СarbohydratesIn100: UITextField?
    
   @IBOutlet weak var CountGramm: UITextField?
    
   
            
    @IBAction func Launch(_ sender: Any) {
        
        
        var СarbohydratesIn100toInt:Double? = Double( (СarbohydratesIn100?.text)! )
        
        var CountGrammtoInt:Double? = Double( (CountGramm?.text)! )
        
        
        func calc (_ V:Double,_ Y:Double) -> Double {
            let XE = (V*Y)/1100
            return XE
            
        }
        
        let result = String(calc( СarbohydratesIn100toInt!, CountGrammtoInt!))
        
        Display?.text = result
        
        
    }
    
  
    
    
}

