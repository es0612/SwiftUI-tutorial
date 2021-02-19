//
//  LandmarkList.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)){
                LandmarkRow(landmark: landmark)
                    }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)",
                 "iPhone XS Max",
        "iPad Pro (12.9-inch) (4th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
