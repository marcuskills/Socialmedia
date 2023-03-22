//
//  TikTokVideoView.swift
//  test
//
//  Created by Marcus Chen on 3/22/23.
//

import Foundation
import SwiftUI

struct TikTokVideoView: View {
    let videoURLs: [URL]

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(videoURLs.indices, id: \.self) { index in
                        GeometryReader { geometry in
                            let minY = geometry.frame(in: .global).minY
                            let maxY = geometry.frame(in: .global).maxY
                            
                            if minY < UIScreen.main.bounds.height && maxY > 0 {
                                VideoPlayerView(videoURL: videoURLs[index])
                            } else {
                                Color.clear
                            }
                        }
                        .frame(height: UIScreen.main.bounds.height)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TikTokVideoView_Previews: PreviewProvider {
    static var previews: some View {
        let videoURL1 = Bundle.main.url(forResource: "milk", withExtension: "mp4")!
        let videoURL2 = Bundle.main.url(forResource: "minnesota", withExtension: "mp4")!
        return TikTokVideoView(videoURLs: [videoURL1, videoURL2])
    }
}
