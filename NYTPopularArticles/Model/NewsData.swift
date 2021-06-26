//
//  NewsData.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 13.06.2021.
//


struct NewsData: Codable{ // все данные хранятся тут
    let results: [Result]?
}

struct Result: Codable {
    let title: String?
    let abstract: String?
    let multimedia: [Multimedia]?
}

struct Multimedia: Codable {
    let url: String
}
