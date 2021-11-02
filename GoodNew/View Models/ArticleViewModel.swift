//
//  ArticleViewModel.swift
//  GoodNew
//
//  Created by Papon Supamongkonchai on 2/11/2564 BE.
//

import Foundation

struct ArticlesListViewModel{
    let articles:[Article]
}

extension ArticlesListViewModel{
    var numberOfSections:Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index:Int) -> ArticleViewModel{
        let article = articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel{
    private let article:Article
}

extension ArticleViewModel{
    init(_ article:Article){
        self.article = article
    }
}

extension ArticleViewModel{
    var title: String{
        return self.article.title
    }
    
    var description:String {
        return self.article.description
    }
}
