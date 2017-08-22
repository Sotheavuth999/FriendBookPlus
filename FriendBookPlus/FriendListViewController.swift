//
//  ViewController.swift
//  FriendBookPlus
//
//  Created by Sotheavuth Nguon on 8/22/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createFriends()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func createFriends() {
        
        // ["Seang Hy", "Tourn Ey", "Sophal"]
        
        let seanghy = Friend()
        seanghy.name = "Seang Hy"
        seanghy.birthday = "April 21st"
        seanghy.phoneNumber = "089-658-853 / 098-724-334"
        seanghy.picture = UIImage(named: "seanghy.jpg")!
        self.friends.append(seanghy)
        
        let tourney = Friend()
        tourney.name = "Tourn Ey"
        tourney.birthday = "April 7th"
        tourney.phoneNumber = "096-852-5723"
        tourney.picture = UIImage(named: "tourney.jpg")!
        self.friends.append(tourney)
        
        let sophal = Friend()
        sophal.name = "Sophal"
        sophal.birthday = "March 11th"
        sophal.phoneNumber = "098-632-007"
        sophal.picture = UIImage(named: "sophal.jpg")!
        self.friends.append(sophal)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        cell.textLabel?.text = friend.name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: friend)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! FriendDetailViewController
        detailVC.friend = sender as! Friend
    }

}

