//
//  ViewController.swift
//  Tanuki
//
//  Created by Rozheen Nersisyan Malhami on 2/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    @IBOutlet weak var backgroundP : UIImageView!
    
    @IBOutlet weak var skinP : UIImageView!
    
    @IBOutlet weak var clothingP : UIImageView!
    
    var indexB = 0
    let backgroundList = ["Blue.PNG", "Emarald.PNG", "Golden.PNG", "Green.PNG", "Noir.PNG", "Peach.PNG", "Pink.PNG", "Red.PNG", "Yellow.PNG"]
    
    var indexS = 0
    let skinList = ["Chill.PNG", "Cyborg.PNG", "Fuzzy Cream.PNG", "Gold.PNG", "LightBlue.PNG", "Starfish.PNG", "Sunset.PNG", "Tattoo.PNG", "Thermal.PNG", "Topo.PNG", "Trippy.PNG", "PinkSkin.PNG", "Brazil.PNG", "Goth.PNG", "Metallic Midnight.PNG", "Neon Light.PNG"]
    
    var indexC = 0
    let clothingList = ["Zombie Slayer.PNG", "WorkC.PNG", "Tux.PNG", "Towel.PNG", "TogaC.PNG", "Ticket.PNG", "Tank Top.PNG", "Straight Jacket.PNG", "Smoking.PNG", "Puffer.PNG", "Police.PNG", "PinkC.PNG", "NavyC.PNG", "Marty.PNG", "LifeJacket.PNG", "Jersy.PNG","Hoodie.PNG", "Holster.PNG", "Hawaiian.PNG", "Hard.PNG", "GreenC.PNG", "Gi.PNG", "FurC.PNG", "Fred.PNG", "Ducky.PNG", "DrugRug.PNG", "Doctor.PNG", "DenimVest.PNG", "Denim2.PNG", "Denim1.PNG", "Construction.PNG", "Cape.PNG", "BearC.PNG", "BJersey.PNG", "Astronut.PNG", "Army.PNG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundP.image = UIImage(named: backgroundList[indexB])
        skinP.image = UIImage(named: skinList[indexS])
        clothingP.image = UIImage(named: clothingList[indexC])
    }
    @IBAction func changeBackground(_ sender: Any) {
        indexB += 1
                if indexB >= backgroundList.count {
                    indexB = 0
                }
                backgroundP.image = UIImage(named: backgroundList[indexB])
    }
    @IBAction func changeSkin(_ sender: Any) {
        indexS += 1
                if indexS >= skinList.count {
                    indexS = 0
                }
                skinP.image = UIImage(named: skinList[indexS])
            }
    @IBAction func changeClothing(_ sender: Any) {
        indexC += 1
                if indexC >= clothingList.count {
                    indexC = 0
                }
                clothingP.image = UIImage(named: clothingList[indexC])
            }

}


