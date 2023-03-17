//
//  BottomButtonsView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI


struct BottomButtonsView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Button 1 tapped")
            }) {
                Image(systemName: "1.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            Spacer()
            Button(action: {
                print("Button 2 tapped")
            }) {
                Image(systemName: "2.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            Spacer()
            Button(action: {
                print("Button 3 tapped")
            }) {
                Image(systemName: "3.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
}
