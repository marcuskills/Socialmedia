//
//  CommentView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI

struct CommentView: View {
    let username: String
    let comment: String

    var body: some View {
        HStack {
            Text(username)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.white)

            Text(comment)
                .font(.system(size: 14))
                .foregroundColor(.white)
                .lineLimit(nil)

            Spacer()
        }
    }
}
