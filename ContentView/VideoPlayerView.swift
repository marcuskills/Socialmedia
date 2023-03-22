//
//  VideoPlayerView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//
import Foundation
import SwiftUI
import AVKit

struct VideoPlayerView: UIViewRepresentable {
    let videoURL: URL
    let player = AVPlayer()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = view.frame
        
        view.layer.addSublayer(playerLayer)
        
        player.isMuted = true
        player.play()
        
        NotificationCenter.default.addObserver(context.coordinator, selector: #selector(Coordinator.didPlayToEnd), name: .AVPlayerItemDidPlayToEndTime, object: nil)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    class Coordinator: NSObject {
        let parent: VideoPlayerView
        
        init(_ parent: VideoPlayerView) {
            self.parent = parent
        }
        
        @objc func didPlayToEnd() {
            parent.player.seek(to: .zero)
            parent.player.play()
        }
    }
}


