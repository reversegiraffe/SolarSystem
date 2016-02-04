//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Kaytee on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!

    @IBOutlet weak var planetImage: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet: Planet) {
        navigationItem.title = planet.name
        
        self.planetImage.image = UIImage(named: planet.imageName)
        self.diameterLabel.text = "\(planet.diameter)"
        self.dayLengthLabel.text = "\(planet.dayLength)"
        self.distanceLabel.text = "\(planet.millionKMsFromSun) million km from sun"

    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
