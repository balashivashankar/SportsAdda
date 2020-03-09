//
//  ActivityTableViewController.swift
//  SportsAdda
//
//  Created by Bala Shiva on 09/03/20.
//  Copyright © 2020 BalaShivaShankar. All rights reserved.
//

import UIKit

class ActivityTableViewController: UITableViewController {
    
    var warning:UIAlertController!
    var activities = [
    
            [
                "hostName": "Anurag",
                "activityName": "Badminton",
                "venueName": "Palace Grounds",
                "area": "Indira Nagar"
    
            ],
    
            [
                "hostName": "Rahul",
                "activityName": "Cricket",
                "venueName": "Malleswaram Grounds",
                "area": "Koramangala"
    
            ],
    
            [
                "hostName": "Salman",
                "activityName": "Tennis",
                "venueName": "Links Brewery",
                "area": "Fraser Town"
    
            ],
    
            [
                "hostName": "Rohit",
                "activityName": "Squash",
                "venueName": "Kanteerava Indoor Stadium",
                "area": "C V Raman Nagar"
    
            ],
    
            [
                "hostName": "Alok",
                "activityName": "Cricket",
                "venueName": "Kumara Park",
                "area": "WhiteField"
    
            ],
    
            [
                "hostName": "Raushan",
                "activityName": "Cycling",
                "venueName": "Mysore Park",
                "area": "Mysore Road"
    
            ],
    
            [
                "hostName": "Samresh",
                "activityName": "Rugby",
                "venueName": "Kumara Park",
                "area": "WhiteField"
    
            ],
    
            [
                "hostName": "Ashish",
                "activityName": "VolleyBall",
                "venueName": "Play Home",
                "area": "WhiteField"
    
            ],
    
            [
                "hostName": "Dheeraj",
                "activityName": "Cricket",
                "venueName": "Playtm",
                "area": "M G Road"
    
            ],
    
            [
                "hostName": "Yasin",
                "activityName": "ThrowBall",
                "venueName": "Play On",
                "area": "WhiteField"
    
            ]
    
        ]

  override func viewDidLoad() {
          super.viewDidLoad()

          tableView.register(ActivityTableViewCell.self, forCellReuseIdentifier: "Activity")
          tableView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
          // Uncomment the following line to preserve selection between presentations
          // self.clearsSelectionOnViewWillAppear = false

          // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//           self.navigationItem.rightBarButtonItem = self.editButtonItem
          CreateUI()
      }
    
    func CreateUI()
    {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "ACTIVITY DETAILS"
        let logOut: UIBarButtonItem = UIBarButtonItem(title: "LOGOUT", style: .plain, target: self, action: #selector(back))
        self.navigationItem.rightBarButtonItem = logOut
    }
    
    @objc func back()
    {
        // Create the alert controller
        let alertController = UIAlertController(title: "", message: "Do you want to Log Out", preferredStyle: .alert)

        // Create the actions
        let okAction = UIAlertAction(title: "LOGOUT", style: UIAlertAction.Style.default) {
            UIAlertAction in
            let loginController = LogInViewController()
            self.present(loginController, animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            print("Cancel Pressed")
        }

        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)

        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }

      // MARK: - Table view data source

      override func numberOfSections(in tableView: UITableView) -> Int {
          // #warning Incomplete implementation, return the number of sections
        return 1
      }

      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // #warning Incomplete implementation, return the number of rows
        return activities.count
      }

      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "Activity", for: indexPath)as! ActivityTableViewCell

        cell.hostName.text = activities[indexPath.row]["hostName"]
        cell.activityName.text = activities[indexPath.row]["activityName"]
        cell.venueName.text = activities[indexPath.row]["venueName"]
        cell.area.text = activities[indexPath.row]["area"]
       
          
          return cell
      }
    
      
      
      // THIS METHOD SPECIFIES THE HEIGHT OF THE CELL
      override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          
          
          return 154
      }
      

    

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
