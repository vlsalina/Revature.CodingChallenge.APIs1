//
//  BookPage.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import SwiftUI

struct BookPage: View {
    var book: BookModel
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                ForEach(book.books, id: \.title) { bk in
                    HStack {
                        AsyncImage(url: URL(string: bk.cover_image)) { image in
                            image.resizable()
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 100, height: 100)
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        VStack(alignment: .leading, spacing: 15) {
                            Text(bk.title)
                            HStack {
                                Text(String(bk.pages))
                                Text("Release: \(bk.releaseDate)")
                            }
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            .navigationTitle(book.authorName)
        }
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage(book: BookModel(authorName: "Murakumo Millenium", books: []))
    }
}
