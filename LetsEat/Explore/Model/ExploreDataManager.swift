//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Fumitaka Imamura on 2021/10/21.
//

import Foundation

class ExploreDataMangager {
    fileprivate var items: [ExploreItem] = []

    func fetch() {
        for data in loadData() {
            items.append(ExploreItem(dict: data))
        }
    }

    fileprivate func loadData() -> [[String: AnyObject]] {
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"),
              let items = NSArray(contentsOfFile: path) else {
                  return [[:]]
              }
        return items as! [[String: AnyObject]]
    }

    func numberOfItems() -> Int {
        items.count
    }
    func explore(at index: IndexPath) -> ExploreItem {
        items[index.item]
    }
}
