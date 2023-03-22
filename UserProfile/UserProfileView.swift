//
//  UserProfileView.swift
//  test
//
//  Created by Marcus Chen on 3/22/23.
//

import Foundation
import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            // Profile picture and name
            VStack(spacing: 16) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                
                Text("John Doe")
                    .font(.headline)
            }
            
            // Follow button
            Button(action: {}) {
                Text("Follow")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            // Photos/videos grid
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 3), spacing: 8) {
                    ForEach(1...9, id: \.self) { index in
                        Image(systemName: "\(index).square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
            .padding(.top, 24)
        }
        .padding()
        .navigationBarTitle("User Profile", displayMode: .inline)
    }
}
