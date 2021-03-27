//
//  Data.swift
//  Reader
//
//  Created by 陈长炜 on 2021/3/27.
//

import SwiftUI

struct Article: Codable, Identifiable {
    var id: Int
    var title: String
    var body: String
}

class Data: ObservableObject {
    @Published var articles = [Article]()
    
    init() {
        let url = URL(string: "https://www.legolas.me/s/articles.json")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in DispatchQueue.main.async {
            self.articles = try! JSONDecoder().decode([Article].self, from: data!)
        }
        
        }.resume()
    }
}
