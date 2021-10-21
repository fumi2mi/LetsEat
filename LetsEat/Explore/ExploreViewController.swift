//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Fumitaka Imamura on 2021/10/18.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCell
        let item = manager.explore(at: indexPath)
        cell.lblName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }


    @IBOutlet weak var collectionView: UICollectionView!
    let manager = ExploreDataMangager()

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()
    }

    @IBAction func unwindLocationCancel(segue: UIStoryboardSegue) {

    }
}
