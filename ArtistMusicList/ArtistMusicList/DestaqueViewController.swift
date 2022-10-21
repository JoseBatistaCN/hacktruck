//
//  DestaqueViewController.swift
//  ArtistMusicList
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaqueViewController: UIViewController {

    @IBOutlet weak var nameArtistFeaturedLabel: UILabel!
    
    @IBOutlet weak var imageArtistFeaturedLabel: UIImageView!
    
    @IBOutlet weak var descriptionArtistFeaturedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameArtistFeaturedLabel.text = ArtistDAO.getArtistList()[0].nameArtist
        descriptionArtistFeaturedLabel.text = ArtistDAO.getArtistList()[0].shortDescriptionArtist
        imageArtistFeaturedLabel.image = UIImage(named: ArtistDAO.getArtistList()[0].photoArtist)
        

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
