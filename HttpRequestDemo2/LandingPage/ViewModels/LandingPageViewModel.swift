//
//  LandingPageViewModel.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import Foundation

class LandingPageViewModel {
    
    func sortAuthors(bookData: [BookModel]) -> [BookModel] {
        
        var filteredAuthors = [BookModel]()
        
        for data in bookData {
            
            let filteredBooks = data.books.filter {
                !$0.title.isEmpty
            }
            
            filteredAuthors.append(BookModel(authorName: data.authorName, books: filteredBooks))
            
        }
        
        filteredAuthors.sort{
            $0.authorName < $1.authorName
        }
        
        return filteredAuthors
        
    }
    
}
