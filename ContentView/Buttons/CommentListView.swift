//
//  CommentListView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI

struct CommentListView: View {
    let comments: [Comment]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                ForEach(comments, id: \.id) { comment in
                    CommentView(username: comment.username, comment: comment.comment)
                }
            }
            .padding()
        }
    }
}

struct Comment: Identifiable {
    let id = UUID()
    let username: String
    let comment: String
}
