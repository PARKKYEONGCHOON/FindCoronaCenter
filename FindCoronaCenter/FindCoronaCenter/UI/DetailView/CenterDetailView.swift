//
//  CenterDetailView.swift
//  FindCoronaCenter
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI
import MapKit

struct CenterDetailView: View {
    
    var center: Center
    
    var body: some View {
        VStack {
            MapView(coordination: center.coodinate)
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            CenterRow(center: center)
        }
        .navigationTitle(center.facilityName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CenterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let center0 = Center(id: 0, sido: .경기도, facilityName: "dadsd", address: "dasdas", lat: "37.44444", lng: "126.3394", centerType: .central, phoneNumber: "010-0000-0000")
        
        CenterDetailView(center: center0)
    }
}
