//
//  FeedListPresenter.swift
//  TestFeedCodeGen
//
//  Created by Peerasak Unsakon on 11/03/2021.
//

import Foundation

protocol FeedListProtocol {
    
}

typealias NewUserCellConfig = TableCellConfigurator<NewUserCell, String>
typealias ArticleCellConfig = TableCellConfigurator<ArticleCell, Int>
typealias BlogCellConfig = TableCellConfigurator<BlogCell, URL>

class FeedListPresenter {
    
    var items: [CellConfigurator] = []
    
    var numberOfItems: Int {
        return items.count
    }
    
    init() {
        
    }
    
    func fetchData() {
        items = [
            NewUserCellConfig(item: "Peerasak"),
			ArticleCellConfig(item: 1),
            BlogCellConfig(item: .init(string: "https://peerasak.com")!)
        ]
    }
    
    func item(at indexPath: IndexPath) -> CellConfigurator {
        return items[indexPath.item]
    }
}
