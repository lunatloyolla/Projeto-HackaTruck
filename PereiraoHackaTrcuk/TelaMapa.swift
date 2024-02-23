//
//  TelaMapa.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import SwiftUI
import CoreLocation
import Foundation
import MapKit

struct TelaMapa: View {
    @StateObject var vm = ModelMapa()
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -5.3451205, longitude: -49.0781208), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                Rectangle()
                    .frame(width: 400, height: 100)
                    .foregroundColor(Color("roxo"))
                    .overlay(Text("Mais Próximos")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(), alignment: .center)
                    .fontWeight(.bold)
                
                VStack{
                    Map(coordinateRegion: $region, annotationItems: vm.arrayLocais){
                        
                        local in
                        MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: local.latitude, longitude: local.longitude)){
                            VStack {
                                Image(systemName: "circle.inset.filled")
                                    .frame(width: 100)
                                    .foregroundColor(Color("roxo"))
                            }
                        }
                    }.ignoresSafeArea()
                        .frame(width: 400, height: 700)
                    
                    
                }.onAppear(){
                    vm.Fetch()}
                
            }
        }
    }
    
    struct TelaMapa_Previews: PreviewProvider {
        static var previews: some View {
            TelaMapa()
        }
    }
}
