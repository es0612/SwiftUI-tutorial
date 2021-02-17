//
//  TextAreaView.swift
//  TestApp
//
//  Created by Ema Shinya on 2021/02/18.
//

import SwiftUI

struct TextAreaView: View {
    var body: some View {
        VStack(alignment: .leading ) {
            Text("Welcome to えん！！")
                .font(.title)
            HStack {
                Text("焼肉店")
                Spacer()
                Text("美味しいお肉を食べたい！")
            }                .font(.subheadline)
            .foregroundColor(.secondary)


            Divider()

            Text("浜松市")
                .font(.title2)
            Text("静岡県、日本")
        }.padding()
    }
}

struct TextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        TextAreaView()
    }
}
