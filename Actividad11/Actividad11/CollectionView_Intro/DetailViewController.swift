//
//  DetailViewController.swift
//  Actividad11_ReviewsCollection
//
//  Created by Alumno IDS on 19/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var detailImage: UIImageView!
    var detailName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = detailName
        detailImage.image = UIImage.init(named: detailName!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
