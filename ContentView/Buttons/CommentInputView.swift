//
//  CommentInputView.swift
//  test
//
//  Created by Marcus Chen on 3/16/23.
//

import Foundation
import SwiftUI

struct CommentInputView: View {
    @Binding var isCommentInputVisible: Bool
    @State private var commentText: String = ""
    @State private var comments: [Comment] = []

    var body: some View {
        VStack {
            CommentListView(comments: comments)
                .frame(height: UIScreen.main.bounds.height / 2)

            Spacer()

            HStack {
                TextField("Add a comment...", text: $commentText)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.leading, 10)

                Button(action: {
                    print("Submit comment: \(commentText)")
                    let newComment = Comment(username: "User", comment: commentText)
                    comments.append(newComment)
                    commentText = ""
                    isCommentInputVisible = false
                    print("Comment comments: \(comments)") ///test debutg
                }) {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding(.trailing, 10)
                }
            }
            .padding(.bottom, 10)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
