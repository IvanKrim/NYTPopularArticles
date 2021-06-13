//
//  NewtworkNewsManager.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 08.06.2021.
//

import Foundation

struct NetworkNewsManager {
    
    func fetchPopularNews() {
        let urlString = "https://api.nytimes.com/svc/topstories/v2/home.json?api-key=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString ?? "Data ERROR ")
            }
        }.resume()
    }
}

