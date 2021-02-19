//
//  TextAreaView.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct TextAreaView: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        VStack(alignment: .leading ) {
            HStack {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.primary)
                FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
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
        TextAreaView(landmark: ModelData().landmarks[0]).environmentObject(ModelData())
    }
}
