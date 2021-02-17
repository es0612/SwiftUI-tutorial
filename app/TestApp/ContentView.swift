//
//  ContentView.swift
//  TestApp
//
//  Created by harami on 2021/02/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack(alignment: .center)  {
            MapView()
                .ignoresSafeArea()
                .frame(height: 300)

            ImageView()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack{
            Text("Welcome to えん！！")
                .font(.title)
//                .fontWeight(.light)
                .foregroundColor(.black)
//                .padding()

            HStack {
                Text("焼肉")
//                Spacer()
                Text("食べたい！")
                

            }.font(.subheadline)
            .foregroundColor(.secondary)
            .padding()

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }

            Spacer()

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
