//
//  ViewController.swift
//  SistemaChamados
//
//  Created by Luan Felix Coelho on 7/16/15.
//  Copyright (c) 2015 Luan Felix Coelho. All rights reserved.
// parei o video em 5:55

import UIKit

    var objects: [String] = ["Cliente"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = text_
        self.tableView.reloadData()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table View
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return objects.count
        
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.titleLabel.text = objects[indexPath.row]
        
        return cell
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //Mostra a tela seguinte quando seleciona a linha da tabela
        //self.performSegueWithIdentifier("showClient", sender: self)
        
        //Desceleciona a linha da tabela
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        
    }

}

