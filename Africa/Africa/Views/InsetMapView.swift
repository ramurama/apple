//
//  InsetMapView.swift
//  Africa
//
//  Created by Ramu Ramasamy on 01.07.23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 256)
            .cornerRadius(20)
            .overlay(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                NavigationLink(destination: MapView(), label: {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .font(.system(size: 20))
                            .foregroundColor(.primary)
                        
                        Text("Locations")
                            .font(.title3)
                            .foregroundColor(.accentColor)
                        
                    }
                    .padding(10)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                })
                .padding(10)
            })
        
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
