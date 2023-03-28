//
//  CenterRow.swift
//  FindCoronaCenter
//
//  Created by 박경춘 on 2023/03/28.
//

import SwiftUI

struct CenterRow: View {
    
    var center: Center
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(center.facilityName)
                    .font(.headline)
                Text(center.centerType.rawValue)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text(center.address)
                .font(.footnote)
            
            //ios단 전화 걸기
            if let url = URL(string: "tel:" + center.phoneNumber) {
                Link(center.phoneNumber, destination: url)
            }
        }
        .padding()
    }
}

struct CenterRow_Previews: PreviewProvider {
    static var previews: some View {
        
        let center0 = Center(id: 0, sido: .경기도, facilityName: "dadsd", address: "dasdas", lat: "37.44444", lng: "126.3394", centerType: .central, phoneNumber: "010-0000-0000")
        
        CenterRow(center: center0)
    }
}
