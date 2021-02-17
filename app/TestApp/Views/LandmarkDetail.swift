//
//  LandmarkDetail.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack(alignment: .center)  {
            MapView()
                .ignoresSafeArea()
                .frame(height: 300)

            ImageView()
                .offset(y: -130)
                .padding(.bottom, -130)

            TextAreaView()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
