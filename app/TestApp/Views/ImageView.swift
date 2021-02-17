//
//  ImageView.swift
//  TestApp
//
//  Created by harami on 2021/02/17.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("harami")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10 )

    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
