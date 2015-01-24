//
//  CountriesTableViewController.swift
//  Passport
//
//  Created by Austen Allred on 1/24/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    var countries = ["Ukraine","China","Canada","Aruba","Bulgaria","Austria"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        var country = countries[indexPath.row]
        cell.textLabel!.text = country
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }


}
