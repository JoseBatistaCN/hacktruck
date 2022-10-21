//
//  ViewController.swift
//  ImcCalculator
//
//  Created by Student on 13/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peso: UITextField!
    
    @IBOutlet weak var altura: UITextField!
    
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func calcularIMC(_ sender: Any) {
        
        if let p:Float = Float(peso.text!) {
            if let a:Float = Float(altura.text!) {
                let r = p / (a * a)
                resultado.text = String(r)
            }
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

