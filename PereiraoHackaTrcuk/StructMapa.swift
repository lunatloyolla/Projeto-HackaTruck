//
//  StructMapa.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import Foundation
import CoreLocation
import MapKit


struct bancodinheirodados2: Decodable, Identifiable{
    var _id: String?
    var _rev: String?
    var id: Int?
    var latitude: Double
    var longitude: Double
//    var coordenadas: CLLocationCoordinate2D{CLLocationCoordinate2D(latitude:latitude, longitude:longitude)}
}
