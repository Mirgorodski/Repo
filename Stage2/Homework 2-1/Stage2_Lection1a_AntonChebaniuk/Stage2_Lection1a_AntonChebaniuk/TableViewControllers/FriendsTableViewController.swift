//
//  FriendsTableViewController.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 28.12.2020.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var photo: UIImage?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        friendsImageView.layer.cornerRadius = friendsImageView.frame.width / 2
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FriendsTableViewCell {
            cell.friendsLabel.text = users[indexPath.row].name
            cell.friendsImageView.image = UIImage(named: users[indexPath.row].photo)
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        photo = UIImage(named: users[indexPath.row].photo) ?? nil
        name = users[indexPath.row].name
        performSegue(withIdentifier: "show_details", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? PersonalPageCollectionViewController
        destinationViewController?.personalPhoto = photo
        destinationViewController?.friendName = name
    }


}
