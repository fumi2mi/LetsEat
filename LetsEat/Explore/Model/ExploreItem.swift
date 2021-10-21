//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Fumitaka Imamura on 2021/10/21.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict: [String: AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
