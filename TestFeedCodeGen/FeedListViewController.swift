//
//  FeedListViewController.swift
//  TestFeedCodeGen
//
//  Created by Peerasak Unsakon on 11/03/2021.
//

import UIKit

class FeedListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: FeedListPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter = FeedListPresenter()
        presenter.fetchData()

        let cellNames = ["NewUserCell", "ArticleCell", "BlogCell"]
        self.registerTableViewCells(cellNames: cellNames, tableView: self.tableView)
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 80
        self.tableView.tableFooterView = UIView()
        
        self.tableView.dataSource = self
    }

    func registerTableViewCells(cellNames: [String], tableView: UITableView) {
        let nibs = cellNames.map { (cellName) -> (UINib, String) in
            let nib = UINib(nibName: cellName, bundle: nil)
            return (nib, cellName)
        }
        
        nibs.forEach { (nib, cellName) in
            tableView.register(nib, forCellReuseIdentifier: cellName)
        }
    }
}

extension FeedListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = presenter.item(at: indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: item).reuseId)!
        item.configure(cell: cell)

        return cell
    }
}

