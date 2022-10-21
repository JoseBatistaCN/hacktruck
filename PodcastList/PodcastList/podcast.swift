//
//  podcast.swift
//  PodcastList
//
//  Created by Student on 14/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation


class Podcast {
    
    let nomePodcast:String
    let episodiosPodcast:String
    let fotoPodcast:String
    
    init(nomePodcast:String, episodiosPodcast:String, fotoPodcast:String) {
        
        self.nomePodcast = nomePodcast
        self.episodiosPodcast = episodiosPodcast
        self.fotoPodcast = fotoPodcast
        
    }
}

class PodcastDAO {
    
    static func getLis() -> [Podcast] {
        return [
            
            Podcast(nomePodcast: "Podpah", episodiosPodcast: "481", fotoPodcast: "podpah"),
            Podcast(nomePodcast: "Flow", episodiosPodcast: "100", fotoPodcast: "flow"),
            Podcast(nomePodcast: "Inteligência ltda", episodiosPodcast: "615", fotoPodcast: "inteligencia"),
            Podcast(nomePodcast: "Mano a Mano", episodiosPodcast: "16", fotoPodcast: "manoamano")
        ]
    }
}
