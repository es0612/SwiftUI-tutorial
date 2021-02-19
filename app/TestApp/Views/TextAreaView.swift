//
//  TextAreaView.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct TextAreaView: View {
    let landmark: Landmark
    var body: some View {
        VStack(alignment: .leading ) {
            Text(landmark.name)
                .font(.title)
            HStack {
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }                .font(.subheadline)
            .foregroundColor(.secondary)


            Divider()

            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
        }.padding()
    }
}

struct TextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        TextAreaView(landmark: landmarks[0])
    }
}
