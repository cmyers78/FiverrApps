//
//  FiverrTableViewController.swift
//  FiverrApp
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class FiverrTableViewController: UITableViewController {

    var fiverrArray = [Category]()
    
    var currentFiverr : Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let businessFiverr = Category()
        
        businessFiverr.name = "Business"
        businessFiverr.descriptionString = "Business Plans, Career Advice"
        businessFiverr.imageNameString = "icon-1"
        
        self.fiverrArray.append(businessFiverr)
        
        
        let advertisingFiverr = Category()
        
        advertisingFiverr.name = "Advertising"
        advertisingFiverr.descriptionString = "Hold Your Sign, Flyers and Handouts"
        advertisingFiverr.imageNameString = "icon-2"
        
        self.fiverrArray.append(advertisingFiverr)
        
        let lifestyleFiverr = Category()
        
        lifestyleFiverr.name = "Lifestyle"
        lifestyleFiverr.descriptionString = "Animal Care & Pets, Relationship"
        lifestyleFiverr.imageNameString = "icon-3"
        
        self.fiverrArray.append(lifestyleFiverr)
        
        print(fiverrArray.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.fiverrArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FiverrTableViewCell
        
        self.currentFiverr = fiverrArray[indexPath.row]
        
        cell.nameLabel.text = self.currentFiverr?.name
        cell.descLabel.text = self.currentFiverr?.descriptionString
        
        if let imageName = self.currentFiverr?.imageNameString {
        cell.fiverrImage.image = UIImage(named: imageName)
        }
    
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentFiverr = fiverrArray[indexPath.row]
        
        performSegueWithIdentifier("fiverrSegue", sender: nil)
        
    }
 
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "fiverrSegue" {
            
            if let segueController = segue.destinationViewController as? DetailViewController {
                
                segueController.theFiverr = self.currentFiverr
            }
        }
    }
    
}
