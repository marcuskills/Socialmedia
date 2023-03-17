//
//  VideoPlayerView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .black
        
        // Replace this URL with the URL of the video you want to display
        if let url = URL(string: "https://www.example.com/video.mp4") {
            let player = AVPlayer(url: url)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = view.bounds
            playerLayer.videoGravity = .resizeAspectFill
            view.layer.addSublayer(playerLayer)
            player.play()
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

