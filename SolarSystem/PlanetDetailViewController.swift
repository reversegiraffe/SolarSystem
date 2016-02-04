//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Kaytee on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var lengthOfDay: UILabel!
    @IBOutlet weak var planetDistance: UILabel!
    @IBOutlet weak var planetDiameter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func updateWithPlanet(planet: Planet) {
            self.lengthOfDay.text = "\(planet.dayLength)"
            self.planetDistance.text = "\(planet.millionKMsFromSun)"
            self.planetDiameter.text = "\(planet.diameter)"
            
            navigationItem.title = "\(planet.name)"
            
        }
        
        updateWithPlanet(PlanetController.planets[0])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
