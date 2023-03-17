//
//  RightSkideButtonsView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI

struct RightSideButtonsView: View {
    @State private var likeCount:Int = 0
    @Binding var isCommentInputVisible: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                print("Like button tapped")
                likeCount += 1
            }) {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
            }
            Text("\(likeCount)")
                   .foregroundColor(.white)
                   .padding(.bottom, 5)
            .padding(.bottom, 15)
            
            
            Button(action: {
                print("Comment button tapped")
                isCommentInputVisible = true
            }) {
                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
            }
            .padding(.bottom, 15)
            
            Button(action: {
                print("Share button tapped")
            }) {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
            }
        }
        .foregroundColor(.white)
    }
}
