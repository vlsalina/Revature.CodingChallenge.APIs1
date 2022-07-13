//
//  Services.swift
//  HttpRequestDemo2
//
//  Created by Vincent Salinas on 7/13/22.
//

import Foundation

class Services: ObservableObject {
    @Published var books = [BookModel]()
    
    func loadData(completion: @escaping ([BookModel]) -> ()) {
        guard let url = URL(string: "https://mocki.io/v1/e860a172-2605-4afe-bcba-dfd071e8256e") else {
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let books = try! JSONDecoder().decode([BookModel].self, from: data!)
            
            print(books)
            DispatchQueue.main.async {
                completion(books)
            }
            
        }.resume()
    }
}
