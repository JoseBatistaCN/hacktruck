//
//  Musica.swift
//  ArtistMusicList
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class Artist {
    
    let nameArtist:String
    let descriptionArtist:String
    let shortDescriptionArtist:String
    let photoArtist:String
    
    init(nameArtist:String, descriptionArtist:String, shortDescriptionArtist:String, photoArtist:String) {
        self.nameArtist = nameArtist
        self.descriptionArtist = descriptionArtist
        self.shortDescriptionArtist = descriptionArtist
        self.photoArtist = photoArtist
    }

}

class Music {
    
    let nameMusic:String
    let artist:String
    let image:String
    let album:String
    
    init(nameMusic:String, artist:String, image:String, album:String) {
        self.nameMusic = nameMusic
        self.artist = artist
        self.image = image
        self.album = album
    }
    
}


class ArtistDAO {
    
    static func getArtistList() -> [Artist] {
        return [
            Artist(nameArtist: "Michael Jackson", descriptionArtist: "Michael Joseph Jackson (Gary, 29 de agosto de 1958 – Los Angeles, 25 de junho de 2009) foi um cantor, compositor e dançarino estadunidense. Apelidado de \"Rei do Pop\", foi um dos ícones culturais mais importantes e influentes de todos os tempos e um dos maiores artistas da história da música. Suas contribuições para a música, a dança e a moda por mais de quatro décadas, juntamente com a divulgação de sua vida pessoal, fizeram dele uma figura global na cultura popular.", shortDescriptionArtist: "Michael Joseph Jackson foi um cantor, compositor e dançarino estadunidense. Apelidado de \"Rei do Pop\"", photoArtist: "michaelJackson")
        ]
    }
}



class MusicDAO {
    
    static func getMusicList() -> [Music] {
        return [
            Music(nameMusic: "Before i forget", artist:"Slpknot", image: "slipknot", album: "The Slubliminal Verses"),
            Music(nameMusic: "Disasterpiece", artist: "Slipknot", image: "slipknot", album: "Iowa"),
            Music(nameMusic: "(515)", artist: "Slipknot", image:"slipknot", album: "Iowa"),
            Music(nameMusic: "Chop Suey", artist: "System of Dawn", image: "systemofadown", album: "Toxicity"),
            Music(nameMusic: "Hold My Hand", artist: "Michael Jackson", image: "michaeljackson", album: "michael")
        
        ]
    }
}
