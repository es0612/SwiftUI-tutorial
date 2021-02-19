//
//  LandmarkDetail.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark

    var body: some View {

        ScrollView  {
            MapView(cordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            ImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            TextAreaView(landmark: landmark)
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
