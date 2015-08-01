//
//  NewViewController.swift
//  SistemaChamados
//
//  Created by Luan Felix Coelho on 7/17/15.
//  Copyright (c) 2015 Luan Felix Coelho. All rights reserved.
//

import UIKit

var text_ = ""

class ClienteTableViewController: UITableViewController{

    
    
    
    @IBOutlet var tableview: UITableView!
    //var titleString: String!
    var data: NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = dataOfJson("http://www.luanfelix.byethost4.com/Chamados/clientselect.php")
        print(data)

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       /* var Cell = self.tableView.dequeueReusableCellWithIdentifier("SecondCell", forIndexPath: indexPath) as! UITableViewCell
        //if indexPath.row <= data.count{*/
            
            let cell: additionInfoCell = self.tableview.dequeueReusableCellWithIdentifier("SecondCell") as! additionInfoCell
        
            if indexPath.row <= data.count {
                
                let maindata = (data[indexPath.row] as! NSDictionary)
                
                cell.clientName!.text = maindata["Nome"] as? String
                
            }
            return cell
    }
    
    func dataOfJson(url: String) -> NSArray {
        let data = NSData(contentsOfURL: NSURL(string: url)!)!
        return NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers, error: nil) as! NSArray
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var urldata = dataOfJson("http://www.luanfelix.byethost4.com/Chamados/clientselect.php")
        var cont = "Email"
        text_ = urldata[indexPath.row]["Nome"]! as! String
        objects[0] = "Contact: \(urldata[indexPath.row][cont]! as! String)"
        objects.append("Equipment: (not-here)")
        objects.append("Description: (not-here)")
    
    }
}







