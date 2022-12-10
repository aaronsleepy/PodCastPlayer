//
//  ContentView.swift
//  PodCastPlayer
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
