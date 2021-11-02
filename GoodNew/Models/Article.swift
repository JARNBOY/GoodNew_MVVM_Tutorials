//
//  Article.swift
//  GoodNew
//
//  Created by Papon Supamongkonchai on 2/11/2564 BE.
//

import Foundation

struct ArticleList: Decodable{
    let articles : [Article]
}
class Article: Decodable{
    let title:String
    let description: String
}
