//
//  ControlsContainterView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI

struct ControlsContainerView: View {
    @Binding var selectedPage: String
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                selectedPage = "For You"
            }) {
                Text("For You")
                    .foregroundColor(selectedPage == "For You" ? .white : .gray)
                    .bold()
            }
            Spacer()
            Button(action: {
                selectedPage = "Following"
            }) {
                Text("Following")
                    .foregroundColor(selectedPage == "Following" ? .white : .gray)
            }
            Spacer()
        }
    }
}
