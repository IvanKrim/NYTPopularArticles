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
                parseJSON(withData: data)
                
            }
        }.resume()
    }
    
    func parseJSON(withData data: Data) {
        let decoder = JSONDecoder()
        
        do {
            let newsData = try decoder.decode(NewsData.self, from: data)
            for title in newsData.results {
                print("Это Title: \(title.title)")
                print("Это Abstract: \(title.abstract)")
            }
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}

