//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Bharat Khatke on 21/08/20.
//  Copyright © 2020 Bharat Khatke. All rights reserved.
//

import Foundation
import UIKit


class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: AriticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=in&apiKey=e16cb6fff7d04dc3bc483dd6a8c28bc5")!
       
        Webservice().getArticles(url: url) { (article) in
          
            if let article = article {
                self.articleListVM = AriticleListViewModel(articles: article)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOFSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleView Cell Not Found")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLbl.text = articleVM.title
        cell.descriptionLbl.text = articleVM.description
        
        return cell
    }
    
    
    
}
