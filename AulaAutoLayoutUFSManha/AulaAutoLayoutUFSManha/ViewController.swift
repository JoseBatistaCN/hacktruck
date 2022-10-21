//
//  ViewController.swift
//  AulaAutoLayoutUFSManha
//
//  Created by Student on 13/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var nomeDestinoLabel: UILabel!
    @IBOutlet weak var nomeOrigemTextField: UITextField!
    
    @IBAction func mudarNome(_ sender: Any) {
        
        nomeDestinoLabel.text = nomeOrigemTextField.text
        nomeOrigemTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

