//
//  NewtworkNewsManager.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 08.06.2021.
//

import Foundation

struct NetworkManager { // предоставляет данные для обновления интерфейса 
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchData() {
        let urlString = "https://api.nytimes.com/svc/topstories/v2/home.json?api-key=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
                return
            }
            
            // parse JSON
            guard let data = data else { return }
            
            do {
                let newsData = try JSONDecoder().decode(NewsData.self, from: data)
            } catch let error {
                print(error)
            }
            
        } .resume()
    }
}



