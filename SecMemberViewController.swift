//
//  SecMemberViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/29/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit
var mail = ""
class SecMemberViewController: UIViewController{
    
    @IBOutlet weak var secImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var posLabel: UILabel!
    @IBOutlet weak var emailButton: UIButton!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        secImage.layer.borderWidth = 2
        
        emailButton.layer.cornerRadius = 7
        
        nameLabel.text = members[myIndexContact]
        posLabel.text = positions[myIndexContact]
        secImage.image = UIImage(named: String(imgname[myIndexContact]) + ".PNG")
    }
    @IBAction func emailClicked(_ sender: AnyObject) {
        mail = "mailto:" + String(email[myIndexContact])
        UIApplication.shared.open(URL(string: mail)! as URL, options: [:], completionHandler: nil)
    }
}
