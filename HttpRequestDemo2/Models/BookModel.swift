//
//  BookModel.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import Foundation

struct BookModel: Decodable {
    var authorId: Int
    var authorName: String
    var books: [Book]
    
    init(authorId: Int, authorName: String, books: [Book]) {
        self.authorId = authorId
        self.authorName = authorName
        self.books = books
    }
}

struct Book: Decodable {
    var title: String
    var cover_image: String
    var pages: Int
    var releaseDate: String
    
    init(title: String, cover_image: String, pages: Int, releaseDate: String) {
        self.title = title
        self.cover_image = cover_image
        self.pages = pages
        self.releaseDate = releaseDate
    }
}
