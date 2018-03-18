//
//  ProfileViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Profile"
        self.view.backgroundColor = UIColor.white
        
        let profilePhoto = UILabel(frame: CGRect(x: UIScreen.main.bounds.width*1/3, y: UIScreen.main.bounds.height * 1/8, width: UIScreen.main.bounds.width*1/3, height: UIScreen.main.bounds.height*1/5))
        profilePhoto.backgroundColor = UIColor.gray
//        profilePhoto.font = UIFont.systemFont(ofSize: 20.0)
        profilePhoto.textAlignment = .center
        profilePhoto.text = "Insert profile photo here"
        profilePhoto.numberOfLines = 3
//        profilePhoto.textColor = UIColor.green
        self.view.addSubview(profilePhoto)
        
        let username = UILabel(frame: CGRect(x: UIScreen.main.bounds.width*1/3, y: UIScreen.main.bounds.height * 6/20, width: UIScreen.main.bounds.width*1/3, height: UIScreen.main.bounds.height*1/5))
        //        profilePhoto.font = UIFont.systemFont(ofSize: 20.0)
        username.textAlignment = .center
        username.text = "TypicalBobaLover"
        //        profilePhoto.textColor = UIColor.green
        self.view.addSubview(username)
        
        
        
        let splitBar = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 3/5, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1/100))
        splitBar.backgroundColor = UIColor.black
        //        profilePhoto.font = UIFont.systemFont(ofSize: 20.0)
//        profilePhoto.textAlignment = .center
//        profilePhoto.text = "Insert profile photo here"
//        profilePhoto.numberOfLines = 3
        //        profilePhoto.textColor = UIColor.green
        self.view.addSubview(splitBar)
        
        
        
        
        
        let saved = UIButton(frame: CGRect(x: UIScreen.main.bounds.width*5/20, y: UIScreen.main.bounds.height * (15/20), width: UIScreen.main.bounds.width*5/10, height: UIScreen.main.bounds.height*1/10))
        
        saved.setTitleColor(UIColor.black, for: .normal)
        saved.backgroundColor = UIColor.cyan
        saved.layer.cornerRadius = 3.0
        saved.setTitle("Saved Drinks", for: .normal)
        self.view.addSubview(saved)

        
        
        
//        let browse = UIButton(frame: CGRect(x: UIScreen.main.bounds.width*3/20, y: UIScreen.main.bounds.height * 7/10, width: UIScreen.main.bounds.width*2/3, height: UIScreen.main.bounds.height*1/5))
//
//        browse.setTitleColor(UIColor.black, for: .normal)
//        browse.backgroundColor = UIColor.purple
//        browse.layer.cornerRadius = 3.0
//        browse.setTitle("BROWSE POPULAR", for: .normal)
//        self.view.addSubview(browse)
//
        
        
        
    }
    
}
