//
//  AnyColor.swift
//  StoryBoardManha
//
//  Created by Student on 15/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class AnyColor: UIViewController {
    
    var destino: String?
    
    @IBOutlet weak var destinoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        destinoLabel.text = destino
        
        if destino != nil {
            
            switch destino?.lowercased() {
            case "azul":
                self.view.backgroundColor = UIColor.blue
            case "roxo":
                self.view.backgroundColor = UIColor.blue
            default:
                self.view.backgroundColor = UIColor.black
            }
        }
    }
}
