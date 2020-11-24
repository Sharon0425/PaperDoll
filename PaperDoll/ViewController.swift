//
//  ViewController.swift
//  PaperDoll
//
//  Created by Sharon on 2020/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hair: UIImageView!
    @IBOutlet weak var face: UIImageView!
    @IBOutlet weak var glasses: UIImageView!
    @IBOutlet weak var body: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var glassesView: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true

    }

    @IBAction func changeHair(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        hair.image = image
    }
    @IBAction func changeFace(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        face.image = image
    }
    
    @IBAction func changeGlasses(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        glasses.image = image
        if image?.isSymbolImage == true{
            glasses.image = nil
        }
        
    }
    
    @IBAction func chageBody(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        body.image = image
    }
    
    @IBAction func change(_ sender: UIButton) {
        let image = sender.currentBackgroundImage
        background.image = image
    }
    
    
    @IBAction func selectHair(_ sender: UIButton) {
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
   
    @IBAction func selectFace(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = false
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectGlasses(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = false
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    @IBAction func selectBody(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = false
        backgroundView.isHidden = true
    }
    @IBAction func selectBackground(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = false
    }
    
    @IBAction func selectRandom(_ sender: UIButton) {
        let hairs : [UIImage?] = [UIImage(named: "Afro"),UIImage(named: "Bangs"),UIImage(named: "Bangs 2"),UIImage(named: "Bantu Knots"),UIImage(named: "Bun"),UIImage(named: "Bun 2"),UIImage(named: "Buns"),UIImage(named: "Cornrows"),UIImage(named: "Cornrows 2"),UIImage(named: "hat-beanie"),UIImage(named: "Long"),UIImage(named: "Hijab")]
        let faces : [UIImage?] = [UIImage(named: "Angry with Fang"),UIImage(named: "Blank"),UIImage(named: "Cheeky"),UIImage(named: "Concerned"),UIImage(named: "Contempt"),UIImage(named: "Concerned Fear"),UIImage(named: "Driven"),UIImage(named: "Fear"),UIImage(named: "Hectic"),UIImage(named: "Loving Grin 1"),UIImage(named: "Old"),UIImage(named: "Awe")]
        let glassess:[UIImage?] = [nil,UIImage(named: "Glasses 2"),UIImage(named: "Glasses 3"),UIImage(named: "Glasses 4"),UIImage(named: "Glasses 5"),UIImage(named: "Glasses")]
        let bodys:[UIImage?] = [UIImage(named: "Blazer Black Tee"),UIImage(named: "Coffee"),UIImage(named: "Device"),UIImage(named: "Gaming"),UIImage(named: "Hoodie"),UIImage(named: "Tee 1"),UIImage(named: "Thunder T-Shirt"),UIImage(named: "Fur Jacket"),UIImage(named: "Sweater"),UIImage(named: "Gym Shirt"),UIImage(named: "Killer"),UIImage(named: "Button Shirt 2")]
        let backgrounds:[UIImage?] = [UIImage(named: "background-1"),UIImage(named: "background-2"),UIImage(named: "background-3"),UIImage(named: "background-4"),UIImage(named: "background-5"),UIImage(named: "background-6"),UIImage(named: "background-7"),UIImage(named: "background-8"),UIImage(named: "background-9"),UIImage(named: "background-10"),UIImage(named: "background-11"),UIImage(named: "background-12")]
        
        
        let number = Int.random(in: 0...11)
        let number6 = Int.random(in: 0...5)
        hair.image = hairs[number]
        face.image = faces[number]
        glasses.image = glassess[number6]
        body.image = bodys[number]
        background.image = backgrounds[number]
    }
    
}

