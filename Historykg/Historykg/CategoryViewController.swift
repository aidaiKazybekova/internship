//
//  CategoryViewController.swift
//  Historykg
//
//  Created by Декс on 10/3/19.
//  Copyright © 2019 Dex. All rights reserved.
//

import UIKit

struct CategoryCell {
    let image: String
    let string: String
}

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CategoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        navigationItem.title = "Категории"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  4
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        return cell
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.width / 2
    }
}
