//
//  Webservice.swift
//  GoodNews
//
//  Created by Bharat Khatke on 21/08/20.
//  Copyright © 2020 Bharat Khatke. All rights reserved.
//

import Foundation

// APP_KEY = e16cb6fff7d04dc3bc483dd6a8c28bc5

class Webservice {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let datas = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: datas)
                
                if let articleLists = articleList {
                    completion(articleLists.articles)
                }

            }
        }.resume()
    }
}
