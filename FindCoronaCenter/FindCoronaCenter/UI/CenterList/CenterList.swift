//
//  CenterList.swift
//  FindCoronaCenter
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct CenterList: View {
    
    var centers = [Center]()
    
    var body: some View {
        List(centers, id: \.id) { center in
            NavigationLink(destination: CenterDetailView(center: center)) {
                CenterRow(center: center)
            }
            .navigationTitle(center.sido.rawValue)
        }
        
    }
}

struct CenterList_Previews: PreviewProvider {
    static var previews: some View {
        
        let centers = [
            Center(id: 0, sido: .경기도, facilityName: "dadsd", address: "dasdas", lat: "37.44444", lng: "126.3394", centerType: .central, phoneNumber: "010-0000-0000"),
            Center(id: 1, sido: .경기도, facilityName: "dadsd", address: "dasdas", lat: "37.44444", lng: "126.3394", centerType: .central, phoneNumber: "010-0000-0000"),
            Center(id: 2, sido: .경기도, facilityName: "dadsd", address: "dasdas", lat: "37.44444", lng: "126.3394", centerType: .central, phoneNumber: "010-0000-0000")
        
        ]
        
        CenterList(centers: centers)
    }
}
