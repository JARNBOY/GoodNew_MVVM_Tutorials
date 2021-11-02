//
//  NewListTableViewController.swift
//  GoodNew
//
//  Created by Papon Supamongkonchai on 23/10/2564 BE.
//

import UIKit

class NewListTableViewController: UITableViewController {

    private var articleListVM: ArticlesListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    

    // MARK: - Function
    func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0bfb7217d29740c3a8ca13fda1c95a49")!
        WebService().getArticles(url: url) { articles in
            if let articles = articles{
                self.articleListVM = ArticlesListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            
            
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else{
            fatalError("ArticleTableViewCell not found")
        }
        
        let articleVm = self.articleListVM.articleAtIndex(indexPath.row)
        cell.lblTitle.text = articleVm.title
        cell.lblDescription.text = articleVm.description
        
        return cell
    }
}
