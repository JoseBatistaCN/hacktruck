//
//  MusicFeaturedViewController.swift
//  ArtistMusicList
//
//  Created by Student on 19/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicFeaturedViewController: UIViewController {

    @IBOutlet weak var photoAlbumImageView: UIImageView!
    
    @IBOutlet weak var nameMusicFeaturedLabel: UILabel!
    
    @IBOutlet weak var nameArtistFeaturedLabel: UILabel!
    
    @IBOutlet weak var nameAlbumFeaturedLabel: UILabel!
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameMusicFeaturedLabel.text = music!.nameMusic
        photoAlbumImageView.image = UIImage(named: music!.image)
        nameArtistFeaturedLabel.text = music!.artist
        nameAlbumFeaturedLabel.text = music!.album
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
