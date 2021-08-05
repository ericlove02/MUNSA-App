//
//  CommitteesInfoViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/28/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

class CommitteesInfoViewController: UIViewController{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var chairImage: UIImageView!
    @IBOutlet weak var chairNames: UILabel!
    @IBOutlet weak var topicsLabel: UILabel!
    @IBOutlet weak var countriesLabel: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        titleLabel.text = name[myIndex]
        chairNames.text = chairs[myIndex]
        topicsLabel.text = topic[myIndex]
        countriesLabel.text = countries[myIndex]
        
        //chairImage.image = UIImage[named: imagename[myIndex] + ".jpg"]
    }
}
