//
//  DetailViewController.swift
//  FiverrApp
//
//  Created by Christopher Myers on 6/27/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var theFiverr: Category?
    
    @IBOutlet weak var detailImage: UIImageView!

    @IBOutlet weak var detailNameLabel: UILabel!
    
    @IBOutlet weak var detailDescLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let fiverr = self.theFiverr {
            self.detailImage.image = UIImage(named: fiverr.imageNameString)
            self.detailNameLabel.text = fiverr.name
            self.detailDescLabel.text = fiverr.descriptionString
        }
    }

}
