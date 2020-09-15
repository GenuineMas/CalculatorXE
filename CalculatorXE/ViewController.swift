//
//  ViewController.swift
//  CalculatorXE
//
//  Created by Plaaaviit on 13.09.17.
//  Copyright © 2017 Plaaaviit. All rights reserved.
//

import UIKit
import CoreNFC


@available(iOS 13.0, *)
class ViewController: UIViewController  {
    
     var session: NFCTagReaderSession?
    
 

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weghtlabel.text = "0 grams"

        
        
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var weghtlabel: UILabel!
    
    @IBOutlet weak var Display: UILabel!
    
    @IBOutlet weak var СarbohydratesIn100: UITextField?
    
   @IBOutlet weak var CountGramm: UITextField?
    
   
            
    @IBAction func Launch(_ sender: Any) {
        
        
        let СarbohydratesIn100toInt:Double? = Double( (СarbohydratesIn100?.text)! )
        
        let CountGrammtoInt:Double? = Double( (CountGramm?.text)! )
        
        
        func calc (_ V:Double,_ Y:Double) -> Double {
            let XE = (V*Y)/1100
            return XE
            
        }
        
        let result = String(calc( СarbohydratesIn100toInt!, CountGrammtoInt!)) 
        
        Display?.text = result
        print("/(result)")
        
        
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)  {
        if let touch = touches.first {
            if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                if touch.force >= touch.maximumPossibleForce {
                    weghtlabel.text = "385+ grams"
                } else {
                    let force = touch.force/touch.maximumPossibleForce
                    let grams = force * 385
                    weghtlabel.text = "\(Int(grams)) grams"
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
         weghtlabel.text = "0 grams"
    }
    

    
  
    
    
}

