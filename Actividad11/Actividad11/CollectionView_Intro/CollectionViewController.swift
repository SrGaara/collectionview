//
//  ViewController.swift
//  Actividad11_ReviewsCollection
//
//  Created by Alumno IDS on 19/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let donas = ["pelos", "pelillos", "hija"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return donas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let identifier = "Item"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! PlacesCollectionViewCell
        
        cell.itemLabel.text = donas[indexPath.row]
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: donas[indexPath.row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? UICollectionViewCell
        let indexPath = collectionView.indexPath(for: item!)
        let detailVC = segue.destination as! DetailViewController
        detailVC.detailName = donas[(indexPath?.row)!]
    }
    

}

