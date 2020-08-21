//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Bharat Khatke on 21/08/20.
//  Copyright © 2020 Bharat Khatke. All rights reserved.
//

import Foundation


struct AriticleListViewModel {
    let articles: [Article]
}

extension AriticleListViewModel {
    
    
    var numberOFSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}



struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        if let title = self.article.title {
            return title
        } else {
            return "No Title"
        }
     }
        
    var description: String {
        if let description = self.article.description {
            return description
        } else {
            return "No description"
        }
    }
        
}
