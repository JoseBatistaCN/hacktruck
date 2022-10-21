//
//  ViewController.swift
//  AulaMapKitUFSManha
//
//  Created by Student on 20/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var meuMapa: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuMapa.showsUserLocation = true
        setupLocationManager()
        addGesture()
        meuMapa.setUserTrackingMode(.follow, animated: true)
        
    }

    //Função 01 - Definindo configurações do mapa
    func setupLocationManager() {
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    //Função 02 - Definindo localização do usuário
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            
            if let location = locations.last {
                
                userLocation = location
                print("A localização do usuário é \(userLocation.coordinate)")
            }
        }
        
    }
    
    //Função 03 - Adicionando a anotaçōes no mapa
    @objc func addAnnotationToMap(gestureRecognizer:UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: meuMapa)
        let newCoordinate:CLLocationCoordinate2D = meuMapa.convert(touchPoint, toCoordinateFrom: meuMapa)
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "José Batista"
        newAnnotation.subtitle = String(describing: "Latitude \(newCoordinate.latitude) / Longitude \(newCoordinate.longitude)")
        
        meuMapa.addAnnotation(newAnnotation)
    }
    
    //Funcao 04 - configurar gesto no mapa
    func addGesture() {
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        
        longPress.minimumPressDuration = 0.8
        meuMapa.addGestureRecognizer(longPress)
    }
    
}


