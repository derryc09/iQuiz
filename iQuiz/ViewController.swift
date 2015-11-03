//
//  ViewController.swift
//  iQuiz
//
//  Created by Andrew Yu on 11/3/15.
//  Copyright © 2015 Derry Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet
    var tableView: UITableView!
    var categories: [String] = ["Mathematics","Marvel Super Heros","Science"]
    var descript: [String] = ["This is all about Math", "All of your super heros!", "What Big Bang Theory?"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("myCell")! as UITableViewCell
        
        cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "myCell")
        
        cell.textLabel!.text = "\(categories[indexPath.row])"
        cell.detailTextLabel!.text = "\(descript[indexPath.row])"
        cell.imageView?.image = UIImage(named: "\(indexPath.row+1).png")
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return categories.count
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here.", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated:true, completion:nil)
    }

}

