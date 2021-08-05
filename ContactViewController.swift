//
//  ContactViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/28/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

var members = ["Eric Love", "Elias Hansen", "Dana Marion", "Joseph Ruelas", "Ryan Tubbesing", "Anya Hansen", "Max Mathieu", "Alison Fowler", "Elizabeth Polhamus", "Seraphina Bieniek", "Jonelle Gonzalez", "Andrew Snell", "Andrea Puentes", "Luke Freeman"]

var positions = ["USG of IT", "Secretary General", "Director General", "Director General", "USG of External Affairs", "Event Coordinator", "USG of Outreach", "USG of Media Management", "USG of Delegate Development", "USG of Productions", "USG of Auxillary Operations", "USG of Auxillary Operations", "MUNSA Sponsor", "MUNSA Sponsor"]

var email = ["elove1183@stu.neisd.net", "ehansen1459@stu.neisd.net", "dmarion0455@stu.neisd.net", "jruelas4856@stu.neisd.net", "rtubbesing8964@stu.neisd.net", "ahansen1285@stu.neisd.net", "tmathieu0509@stu.neisd.net", "afowler4558@stu.neisd.net", "epolhamus8069", "sbieniek7630@stu.neisd.net", "jgonzalez7716@stu.neisd.net", "asnell4339@stu.neisd.net", "apuent@neisd.net", "lfreem1@neisd.net"]

var imgname = ["elove", "ehansen", "dmarion", "jruelas", "rtubbesing", "ahansen", "mmathieu", "afowler", "epolhamus", "sbieniek", "jgonzalez", "asnell", "apuentes", "lfreeman"]

var myIndexContact = 0

class ContactViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(members.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = members[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndexContact = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
