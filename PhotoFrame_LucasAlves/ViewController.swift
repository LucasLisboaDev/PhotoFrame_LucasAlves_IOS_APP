//
//  ViewController.swift
//  PhotoFrame_LucasAlves
//
//  Created by Lucas Lisboa  on 1/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beachName: UILabel!
    
    @IBOutlet weak var beachImage: UIImageView!
    
    
    @IBAction func changeButtom(_ sender: UIButton) {
        
        currentIndex = (currentIndex + 1) % beaches.count
              updateBeach()
    }
    
    
    let beaches =          [("Cabo Frio", "caboFrio"),
                      ("Jericoacoara", "jeri"),
                      ("Rio De Janeiro", "rioDeJaneiro"),
                      ("Salvador", "salvador"),
                      ("Vitoria", "vix")]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBeach()
    }
   
    func updateBeach() {
           let (name, imageName) = beaches[currentIndex]
           beachName.text = name
           beachImage.image = UIImage(named: imageName)
       }
    

}

