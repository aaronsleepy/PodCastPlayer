//
//  PlayingStatusView.swift
//  PodCastPlayer
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

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


struct PlayingStatusView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingStatusView(isPlaying: .constant(false))
    }
}
