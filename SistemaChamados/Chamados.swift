//
//  Chamados.swift
//  SistemaChamados
//
//  Created by Tanmay Bakshi on 2015-07-30.
//  Copyright (c) 2015 Luan Felix Coelho. All rights reserved.
//

import UIKit

class Chamados: UITableViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toNovo" {
            text_ = ""
            objects = ["Cliente"]
        }
    }
    
}