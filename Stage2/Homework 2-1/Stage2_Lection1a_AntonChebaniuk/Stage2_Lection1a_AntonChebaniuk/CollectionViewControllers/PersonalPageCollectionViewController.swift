//
//  PersonalPageCollectionViewController.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 28.12.2020.
//

import UIKit

class PersonalPageCollectionViewController: UICollectionViewController {

    var personalPhoto: UIImage?
    var friendName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? PersonalCollectionViewCell {
            cell.personalImageView.image = personalPhoto
            cell.personalLabel.text = friendName
            return cell
        }
    
        // Configure the cell
    
        return UICollectionViewCell()
    }
    
    

}
