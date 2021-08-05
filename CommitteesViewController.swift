//
//  CommitteesViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/29/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import UIKit

var committees = ["African Union", "Disarm", "ECOSOC", "FAO", "GA", "ILO", "ITU", "OAS", "Security Council", "SPECPOL", "UN Women", "UNDP", "UNEP", "UNESCO", "UNHRC", "UNICEF", "UNODC", "WHO", "WTO", "Crisis 1", "Crisis 2", "Historical Crisis 1", "Historical Crisis 2", "Nuclear Crisis"]
var name = ["African Union", "Disarmament", "ECOSOC", "FAO", "GA", "ILO", "ITU", "OAS", "Security Council", "SPECPOL", "UN Women", "UNDP", "UNEP", "UNESCO", "UNHRC", "UNICEF", "UNODC", "WHO", "WTO", "Crisis 1", "Crisis 2", "Historical Crisis 1", "Historical Crisis 2", "Nuclear Crisis"]

var chairs = ["Julian Cox, Marissa Montalvo, Stephanie Kent", "Axel Wilson, Alejandra Luna, Chloe Steele, Maddy Stevenson", "Maya Cantu, Leslie Venegas, Giulia Mayhua", "Thomas Johnson, Victoria Tijerina, Natalie Blanchard", "Tatum Spriester, Aspen Harrison, Parker Worley", "Ezra Harris, Tyler Gonzalez, Clayton Cole", "Rishith Telakalapalli, Andres Rivera, Emma Williams", "Cielo Martinez, Priscila Rivera, Tatiana Sigg, Alejandro Rodriguez-Aguirre", "Marcel Flores, Vadne Krauss", "Kaden Fuentes, Lamaya Abidi, Harrison Doyle", "Anna West, Carter Murray", "Galilea Cervera, Evan Wiedanhoeffer", "Rachel Kamata, Carter Murray", "Mark Khiann Espere, Olivia Edwards, Carson Callender", "Riley Clark, Kelly Hirlas, Isabel Dodd", "Madeleine Wiley, Yasmina Abidi, Giselle Baltazar- Salinas", "Kyren Stephenson, Aaron Cruz, Emma Hernandez", "Audrey Michel, Diego Escobedo, Malachi Brand, Isaiah Bosmans", "Joseph Araujo, Julie Lasky, Cristian Benavidez", "Katherine Dunnagan, Paige Castle, Lance Elis", "Luke Martin, Rosemary Wilson, Appie Aguirre", "Alec Toland, Camille Wiley, Rabia Shahid", "Maya Mackey, Chris Huseman", "Matthew Tobar, Arianna Rosales, Jasmine Vannatta"]

var topic = ["Combatting the Murder of Those with Albinism for their Appendages, Terminating the Spread of Ebola Virus", "Preventing Nuclear Proliferation Through International Cooperation and Treaties, Urging the Regulation of Biological Warfare", "Increasing Access to Renewable Forms of Energy in Developing Countries, Integrating Non-Governmental Organizations into Equal Pay Efforts", "Discussing the Elimination of Food Waste in Developed Nations, Discussing Sustainable Agricultural Development in Areas with Growing Populations", "Addressing the Legitimacy of Dictatorships and Their Place in the United Nations, Discussing the Proliferation of Nuclear Weapons in the 21st Century", "Improving the Treatment of Migrant Refugee Workers, Eliminating Forced Labor in the Textile Industry", "Discussing the Role of Government in Biometrics, Addressing Breaches of Intergovernmental Cyber-ware", "Addressing Domestic Violence Against Women, Advancing Public Health in Latin America", "Adressing the Global Threat of Cyber Warfare, Promoting the Development of Counterterrorism Efforts", "Managing the Removal of Explosive Ordinances from Warzones, Addressing the Proliferation of Anti-Semetic Extremist Groups", "Combatting Violence Against LGBTQ+ Individuals in Religious Communities, Increasing Access to Feminine Hygiene Products in Developing Nations", "Adressing the Effects of Climate Change on Developing Nations, Increasing Access to Healthcare in Latin America", "Managing Plastic Waste in Regards to the Pacific Garbage Patch, Developing Solutions for Islands and Coastal Areas Regarding Rising Sea Levels", "Protecting Indigenous Cultures Affected by Deforestation, Developing Sustainable Resources in Densely Populated Urban Areas", "Improving Family Reunification Services at Reugee Camps and Borders, Containing the Overflow of Refugee Camps", "Establishing Goals Regarding Education in Developing Countries, Addressing Access to Healthcare for Children in Poverty", "Combatting Terrorist Attacks Targeting Places of Worship, Preventing the Illicit Distibution of Counterfeit Medication", "Addressing the Impact of Antibiotic REsistance and Anti-Vaccination Ideals, Addressing the Use of Biological Warfare Regarding Terrorism", "Discussing the Impacts of Economic Sanctions as a Penalty Towards Developing Nations, Combatting the Effects of the Illegal Drug Trade", "Plague Strikes Grain Fields Across the West", "Global Stock Market Crash", "The OPEC Oil Price Shock of 1973", "The Arab Spring", "Nuclear Waste Leak in the Pacific Ocean"]

var countries = ["African Union", "Disarmament", "ECOSOC", "FAO", "GA", "ILO", "ITU", "OAS", "Security Council", "SPECPOL", "UN Women", "UNDP", "UNEP", "UNESCO", "UNHRC", "UNICEF", "UNODC", "WHO", "WTO", "Crisis 1", "Crisis 2", "Historical Crisis 1", "Historical Crisis 2", "Nuclear Crisis"]


var imagename = ["AU", "Disarm", "ECOSOC", "FAO", "GA", "ILO", "ITU", "OAS", "SecCo", "SPECPOL", "UNWomen", "UNDP", "UNEP", "UNESCO", "UNHRC", "UNICEF", "UNODC", "WHO", "WTO", "Crisis1", "Crisis2", "HisCrisis1", "HisCrisis2", "NucCrisis"]

var myIndex = 0

class CommitteesViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return(committees.count)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = committees[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
