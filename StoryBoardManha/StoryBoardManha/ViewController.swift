//
//  ViewController.swift
//  StoryBoardManha
//
//  Created by Student on 15/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var origemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AnyColor" {
            if let novaView = segue.destination as? AnyColor {
                novaView.destino = origemTextField.text
            }
        }
    }


}

