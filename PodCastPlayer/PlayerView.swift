//
//  PlayerView.swift
//  PodCastPlayer
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct PlayerView: View {
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(episode.title)
                .font(.largeTitle)
            
            Text(episode.showTitle)
                .font(.title3)
                .foregroundColor(.gray)
            
            PlayButton(isPlaying: $isPlaying)
            
            PlayingStatusView(isPlaying: $isPlaying)

        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.list[0])
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button {
            self.isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80)
                .foregroundColor(.primary)
        }
    }
}

struct PlayingStatusView: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}
