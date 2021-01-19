//
//  GroupsTableViewController.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 28.12.2020.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    let tempGroups = myGroups
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? GroupsTableViewCell {
            cell.groupsLabel.text = myGroups[indexPath.row].groupName
            cell.groupsImageView.layer.cornerRadius = cell.groupsImageView.frame.width / 2
            cell.groupsImageView.image = UIImage(named: myGroups[indexPath.row].groupPhoto)
            return cell
        }
        return UITableViewCell()
    }

}
