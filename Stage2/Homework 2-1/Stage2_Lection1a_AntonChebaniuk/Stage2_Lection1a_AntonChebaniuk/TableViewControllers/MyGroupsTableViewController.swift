//
//  MyGroupsTableViewController.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 28.12.2020.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {
    
    var myGroups: [Group] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        return myGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyGroupsTableViewCell {
            cell.myGroupsLabel.text = myGroups[indexPath.row].groupName
            cell.myGroupsImageView.layer.cornerRadius = cell.myGroupsImageView.frame.width / 2
            cell.myGroupsImageView.image = UIImage(named: myGroups[indexPath.row].groupPhoto)
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwindFromTableViewController(_ segue: UIStoryboardSegue) {
        guard let tableViewController = segue.source as? GroupsTableViewController,
              let indexPath = tableViewController.tableView.indexPathForSelectedRow else { return }
        
        let groupName = tableViewController.tempGroups[indexPath.row].groupName
        let groupPhoto = tableViewController.tempGroups[indexPath.row].groupPhoto
        
        let group = Group(groupName: groupName, groupPhoto: groupPhoto)
        
        if !myGroups.contains(where: { $0.groupName == group.groupName }) {
            myGroups.append(group)
        }
        
        tableView.reloadData()
    }
    
}
