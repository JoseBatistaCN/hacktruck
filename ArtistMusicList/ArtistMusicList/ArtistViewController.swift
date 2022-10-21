//
//  ArtistViewController.swift
//  ArtistMusicList
//
//  Created by Student on 19/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController {

    @IBOutlet weak var nameArtistLabel: UILabel!
    
    @IBOutlet weak var photoArtistImageView: UIImageView!
    
    @IBOutlet weak var descriptionArtistLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameArtistLabel.text = ArtistDAO.getArtistList()[0].nameArtist
        
        photoArtistImageView.image = UIImage(named: ArtistDAO.getArtistList()[0].photoArtist)
        
        descriptionArtistLabel.text = ArtistDAO.getArtistList()[0].descriptionArtist

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
