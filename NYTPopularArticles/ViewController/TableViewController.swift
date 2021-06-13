//
//  TableViewController.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 08.06.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    let networkNewsManager = NetworkNewsManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 170
        
        networkNewsManager.fetchPopularNews()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        
        return cell
    }
    
}
