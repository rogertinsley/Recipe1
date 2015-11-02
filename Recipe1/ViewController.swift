//
//  ViewController.swift
//  Recipe1
//
//  Created by Roger Tinsley on 03/06/2015.
//  Copyright (c) 2015 Roger Tinsley. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["item1", "item2", "item3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "breads"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.alpha = 0.5
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell", forIndexPath: indexPath) as UITableViewCell
        
        if (indexPath.item % 2 == 0) {
            cell.backgroundColor = UIColor.clearColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = array[indexPath.item]
        
        return cell;
    }

}

