//
//  ContentView.swift
//  TestAppForWatch Extension
//
//  Created by Ema Shinya on 2021/03/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}