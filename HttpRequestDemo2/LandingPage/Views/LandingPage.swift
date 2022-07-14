//
//  LandingPage.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import SwiftUI

struct LandingPage: View {
    @State var books = [BookModel]()
    @State var showNextView = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(books, id: \.authorName) { book in
                    Text(book.authorName)
                }
            }
            .onAppear() {
                Services().loadData { books in
                    self.books = books
                }
            }
            .navigationTitle("List of Authors")
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
