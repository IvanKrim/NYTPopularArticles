//
//  NewsData.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 13.06.2021.
//

import Foundation

struct NewsData: Codable{
    let results: [Result]
}

struct Result: Codable {
    let title: String
    let abstract: String
}
