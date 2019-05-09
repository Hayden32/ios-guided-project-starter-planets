//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Hayden Hastings on 5/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell"

class PlanetsCollectionViewController: UICollectionViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PlanetCollectionViewCell
    
        let planet = planetController.planets[indexPath.item]
        
        cell.planetNameLabel.text = planet.name
        cell.planetImageView.image = planet.image
        
        return cell
    }
    
    // MARK: - Properties
    
    let planetController = PlanetController()

}
