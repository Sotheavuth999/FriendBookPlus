//
//  FriendDetailViewController.swift
//  FriendBookPlus
//
//  Created by Sotheavuth Nguon on 8/22/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    
    var friend = Friend()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nameLabel.text = self.friend.name
        self.birthdayLabel.text = self.friend.birthday
        self.phoneLabel.text = self.friend.phoneNumber
        self.pictureImageView.image = self.friend.picture
    }
    

}
