//
//  GameViewController.swift
//  Endless
//
//  Created by Nathan on 10/30/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    let game = MainGame()
    
    var timer = Timer()
    var timer2 = Timer()
    
    var Temp:Int = 0
    
    @IBOutlet weak var LogNumber: UILabel!
    @IBOutlet weak var StoneNumber: UILabel!
    @IBOutlet weak var BoardNumber: UILabel!
    @IBOutlet weak var CharcoalNumber: UILabel!
    @IBOutlet weak var CoalNumber: UILabel!
    @IBOutlet weak var OreNumber: UILabel!
    @IBOutlet weak var IronNumber: UILabel!
    @IBOutlet weak var SteelNumber: UILabel!
    @IBOutlet weak var EnergyNumber: UILabel!
    @IBOutlet weak var SandNumber: UILabel!
    @IBOutlet weak var GlassNumber: UILabel!
    @IBOutlet weak var WaterNumber: UILabel!
    @IBOutlet weak var ConcreteNumber: UILabel!
    @IBOutlet weak var OilNumber: UILabel!
    @IBOutlet weak var PlasticNumber: UILabel!
    @IBOutlet weak var FiberNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if game.active == 0 {
            timer2.invalidate()
        }
        game.active = 1
        scheduledTimerWithTimeInterval()
        print("Loaded")
    }

    override var shouldAutorotate: Bool {
        return true
    }
    
    func UpdateLabels() {
        print("Refresh Screen")
        LogNumber.text = String(game.Log)
        StoneNumber.text = String(game.Stone)
        BoardNumber.text = String(game.Plank)
        CharcoalNumber.text = String(game.Charcoal)
        CoalNumber.text = String(game.Coal)
        OreNumber.text = String(game.Ore)
        IronNumber.text = String(game.Iron)
        SteelNumber.text = String(game.Steel)
        EnergyNumber.text = String(game.Energy)
        SandNumber.text = String(game.Sand)
        GlassNumber.text = String(game.Glass)
        WaterNumber.text = String(game.Water)
        ConcreteNumber.text = String(game.Concrete)
        OilNumber.text = String(game.Oil)
        PlasticNumber.text = String(game.Plastic)
        FiberNumber.text = String(game.Fiber)
        
        //print("LogNum = " + String(game.LogNum))
        //print("PList Num " + String(PlistManager.sharedInstance.getValueForKey(key: "LogNum")))

    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
        print("Memery Warning")
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Line 1
    @IBAction func StoneButton(_ sender: Any) {
        if game.Log >= 20 {
            game.Log -= 20
            game.StoneNum += 1
        }

    }
    
    @IBAction func LogButton(_ sender: Any) {
        if game.Stone >= 20 {
            game.Stone -= 20
            game.LogNum += 1
        }
    }
    
    @IBAction func PlankButton(_ sender: Any) {
        if game.Log >= 20 {
            game.Log = game.Log - 20
            game.PlankNum += 1
        }
    }
    
    @IBAction func Charcoal(_ sender: Any) {
        if game.Log >= 200 {
            game.Log = game.Log - 200
            game.CharcoalNum += 1
        }
    }
    
    @IBAction func OreButton(_ sender: Any) {
        if game.Plank >= 350 {
            game.Plank = game.Plank - 350
            game.OreNum += 1
        }
    }
    
    @IBAction func IronButton(_ sender: Any) {
        if game.Plank >= 100 && game.Stone >= 1000 {
            game.Plank = game.Plank - 100
            game.Stone = game.Stone - 1000
            game.IronNum += 1
        }
    }
    
    //Line 2
    @IBAction func CoalButton(_ sender: Any) {
        if game.Plank >= 1000 && game.Iron >= 100 {
            game.Plank = game.Plank - 1000
            game.Iron = game.Iron - 100
            game.CoalNum += 1
        }
    }
    
    @IBAction func SteelButton(_ sender: Any) {
        if game.Plank >= 1000 && game.Iron >= 500 {
            game.Plank = game.Plank - 1000
            game.Iron = game.Iron - 500
            game.SteelNum += 1
        }
    }
    
    @IBAction func WindmillButton(_ sender: Any) {
        if game.Steel >= 500 {
            game.Steel = game.Steel - 500
            game.EnergyNum += 1
        }
    }
    
    @IBAction func Plank2Button(_ sender: Any) {
        if game.Steel >= 250 && game.Plank >= 1000 {
            game.Steel -= 250
            game.Plank -= 1000
            game.PlankNum += 8
        }
    }
    
    @IBAction func SandButton(_ sender: Any) {
        if game.Plank >= 500 && game.Steel >= 500 {
            game.Plank -= 500
            game.Steel -= 500
            game.SandNum += 1
        }
    }
    
    @IBAction func Stone2Button(_ sender: Any) {
        if game.Plank >= 1000 && game.Steel >= 250{
            game.Plank -= 1000
            game.Steel -= 250
            game.StoneNum += 2048
        }
    }
    
    //Line 3
    @IBAction func Coal2Button(_ sender: Any) {
        if game.Plank >= 1000 && game.Steel >= 250{
            game.Plank -= 1000
            game.Steel -= 250
            game.CoalNum += 32
        }

    }
    
    @IBAction func GlassButton(_ sender: Any) {
        if game.Plank >= 500 && game.Steel >= 1000{
            game.Plank -= 500
            game.Steel -= 1000
            game.GlassNum += 1
        }

    }
    
    @IBAction func WaterButton(_ sender: Any) {
        if game.Steel >= 500 && game.Glass >= 500 {
            game.Steel -= 500
            game.Glass -= 500
            game.WaterNum += 1
        }
    }
    
    @IBAction func HydroButton(_ sender: Any) {
        if game.Steel >= 1000 && game.Glass >= 800 {
            game.Steel -= 1000
            game.Glass -= 800
            game.HydroNum += 1
        }
    }
    
    @IBAction func Concrete(_ sender: Any) {
        if game.Steel >= 2000 && game.Glass >= 1000 {
            game.Steel -= 2000
            game.Glass -= 1000
            game.ConcreteNum += 1
        }
    }
    
    @IBAction func Steel2(_ sender: Any) {
        if game.Glass >= 800 && game.Concrete >= 800 {
            game.Glass -= 800
            game.Concrete -= 800
            game.SteelNum += 64
        }
    }
    
    //Line 4
    @IBAction func BurnerButton(_ sender: Any) {
        if game.Glass >= 200 && game.Concrete >= 800 {
            game.Glass -= 200
            game.Concrete -= 800
            game.BurnerNum += 1
        }
    }
    
    @IBAction func OilButton(_ sender: Any) {
        if game.Glass >= 2000 && game.Concrete >= 2000 {
            game.Glass -= 2000
            game.Concrete -= 2000
            game.OilNum += 1
        }
    }
    
    @IBAction func PlasticButton(_ sender: Any) {
        if game.Glass >= 4000 && game.Concrete >= 4000 {
            game.Glass -= 4000
            game.Concrete -= 4000
            game.PlasticNum += 1
        }
    }
    
    @IBAction func SolarButton(_ sender: Any) {
        if game.Glass >= 4000 && game.Plastic >= 700 {
        game.Glass -= 4000
        game.Plastic -= 700
        game.EnergyNum += 512
        }
    }
    
    @IBAction func FiberButton(_ sender: Any) {
        if game.Concrete >= 4000 && game.Plastic >= 4000 {
            game.Concrete -= 4000
            game.Plastic -= 4000
            game.FiberNum += 1
        }
    }
    
    
    @IBAction func ChangeScreen(_ sender: Any) {
        self.save()
        game.active = 0
        SaveTimer()
    }
    
    func Main() {
        if Temp == 0 {
            PlistManager.sharedInstance.startPlistManager()
            self.load()
            self.game.active = 1
            Temp = 1
        }
        if game.active == -1 {
            save()
            print("Active = -1")
            timer.invalidate()
        } else if game.active == 1 {
            print("Active = 1")
            game.math()
            UpdateLabels()
        } else if game.active == 0 {
            print("Active = 0")
            game.math()
        }
    }
    
    
    
    func scheduledTimerWithTimeInterval(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(GameViewController.Main), userInfo: nil, repeats: true)
    }
    func SaveTimer() {
        timer2 = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(GameViewController.save), userInfo: nil, repeats: true)
        
    }
    
    func load() {
        
        game.LogNum = PlistManager.sharedInstance.getValueForKey(key: "LogNum")
        game.StoneNum = (PlistManager.sharedInstance.getValueForKey(key: "StoneNum"))
        game.PlankNum = (PlistManager.sharedInstance.getValueForKey(key: "BoardNum"))
        game.CharcoalNum = (PlistManager.sharedInstance.getValueForKey(key: "CharcoalNum"))
        game.CoalNum = (PlistManager.sharedInstance.getValueForKey(key: "CoalNum"))
        game.OreNum = (PlistManager.sharedInstance.getValueForKey(key: "OreNum"))
        game.IronNum = (PlistManager.sharedInstance.getValueForKey(key: "IronNum"))
        game.SteelNum = (PlistManager.sharedInstance.getValueForKey(key: "SteelNum"))
        game.EnergyNum = (PlistManager.sharedInstance.getValueForKey(key: "EnergyNum"))
        game.SandNum = (PlistManager.sharedInstance.getValueForKey(key: "SandNum"))
        game.GlassNum = (PlistManager.sharedInstance.getValueForKey(key: "GlassNum"))
        game.WaterNum = (PlistManager.sharedInstance.getValueForKey(key: "WaterNum"))
        game.ConcreteNum = (PlistManager.sharedInstance.getValueForKey(key: "ConcreteNum"))
        game.OilNum = (PlistManager.sharedInstance.getValueForKey(key: "OilNum"))
        game.PlasticNum = (PlistManager.sharedInstance.getValueForKey(key: "PlasticNum"))
        game.FiberNum = (PlistManager.sharedInstance.getValueForKey(key: "FiberNum"))
        game.BurnerNum = (PlistManager.sharedInstance.getValueForKey(key: "BurnerNum"))
        game.HydroNum = (PlistManager.sharedInstance.getValueForKey(key: "HydroNum"))
        
        game.Log = (PlistManager.sharedInstance.getValueForKey(key: "Log"))
        game.Stone = (PlistManager.sharedInstance.getValueForKey(key: "Stone"))
        game.Plank = (PlistManager.sharedInstance.getValueForKey(key: "Board"))
        game.Charcoal = (PlistManager.sharedInstance.getValueForKey(key: "Charcoal"))
        game.Coal = (PlistManager.sharedInstance.getValueForKey(key: "Coal"))
        game.Ore = (PlistManager.sharedInstance.getValueForKey(key: "Ore"))
        game.Iron = (PlistManager.sharedInstance.getValueForKey(key: "Iron"))
        game.Steel = (PlistManager.sharedInstance.getValueForKey(key: "Steel"))
        game.Energy = (PlistManager.sharedInstance.getValueForKey(key: "Energy"))
        game.Sand = (PlistManager.sharedInstance.getValueForKey(key: "Sand"))
        game.Glass = (PlistManager.sharedInstance.getValueForKey(key: "Glass"))
        game.Water = (PlistManager.sharedInstance.getValueForKey(key: "Water"))
        game.Concrete = (PlistManager.sharedInstance.getValueForKey(key: "Concrete"))
        game.Oil = (PlistManager.sharedInstance.getValueForKey(key: "CrudeOil"))
        game.Plastic = (PlistManager.sharedInstance.getValueForKey(key: "Plastic"))
        game.Fiber = (PlistManager.sharedInstance.getValueForKey(key: "Fiber"))
        
        game.win = PlistManager.sharedInstance.getValueForKey(key: "win")
        //UpdateLabels()
    }
    
    //Saving Function
    func save() {
        PlistManager.sharedInstance.saveValue(value: game.Log as AnyObject, forKey: "Log")
        PlistManager.sharedInstance.saveValue(value: game.Stone as AnyObject, forKey: "Stone")
        PlistManager.sharedInstance.saveValue(value: game.Plank as AnyObject, forKey: "Board")
        PlistManager.sharedInstance.saveValue(value: game.Charcoal as AnyObject, forKey: "Charcoal")
        PlistManager.sharedInstance.saveValue(value: game.Coal as AnyObject, forKey: "Coal")
        PlistManager.sharedInstance.saveValue(value: game.Ore as AnyObject, forKey: "Ore")
        PlistManager.sharedInstance.saveValue(value: game.Iron as AnyObject, forKey: "Iron")
        PlistManager.sharedInstance.saveValue(value: game.Steel as AnyObject, forKey: "Steel")
        PlistManager.sharedInstance.saveValue(value: game.Energy as AnyObject, forKey: "Energy")
        PlistManager.sharedInstance.saveValue(value: game.Sand as AnyObject, forKey: "Sand")
        PlistManager.sharedInstance.saveValue(value: game.Glass as AnyObject, forKey: "Glass")
        PlistManager.sharedInstance.saveValue(value: game.Water as AnyObject, forKey: "Water")
        PlistManager.sharedInstance.saveValue(value: game.Concrete as AnyObject, forKey: "Concrete")
        PlistManager.sharedInstance.saveValue(value: game.Oil as AnyObject, forKey: "CrudeOil")
        PlistManager.sharedInstance.saveValue(value: game.Plastic as AnyObject, forKey: "Plastic")
        PlistManager.sharedInstance.saveValue(value: game.Fiber as AnyObject, forKey: "Fiber")
        
        PlistManager.sharedInstance.saveValue(value: game.LogNum as AnyObject, forKey: "LogNum")
        PlistManager.sharedInstance.saveValue(value: game.StoneNum as AnyObject, forKey: "StoneNum")
        PlistManager.sharedInstance.saveValue(value: game.PlankNum as AnyObject, forKey: "BoardNum")
        PlistManager.sharedInstance.saveValue(value: game.CharcoalNum as AnyObject, forKey: "CharcoalNum")
        PlistManager.sharedInstance.saveValue(value: game.CoalNum as AnyObject, forKey: "CoalNum")
        PlistManager.sharedInstance.saveValue(value: game.OreNum as AnyObject, forKey: "OreNum")
        PlistManager.sharedInstance.saveValue(value: game.IronNum as AnyObject, forKey: "IronNum")
        PlistManager.sharedInstance.saveValue(value: game.SteelNum as AnyObject, forKey: "SteelNum")
        PlistManager.sharedInstance.saveValue(value: game.EnergyNum as AnyObject, forKey: "EnergyNum")
        PlistManager.sharedInstance.saveValue(value: game.SandNum as AnyObject, forKey: "SandNum")
        PlistManager.sharedInstance.saveValue(value: game.GlassNum as AnyObject, forKey: "GlassNum")
        PlistManager.sharedInstance.saveValue(value: game.WaterNum as AnyObject, forKey: "WaterNum")
        PlistManager.sharedInstance.saveValue(value: game.ConcreteNum as AnyObject, forKey: "ConcreteNum")
        PlistManager.sharedInstance.saveValue(value: game.OilNum as AnyObject, forKey: "OilNum")
        PlistManager.sharedInstance.saveValue(value: game.PlasticNum as AnyObject, forKey: "PlasticNum")
        PlistManager.sharedInstance.saveValue(value: game.FiberNum as AnyObject, forKey: "FiberNum")
        
        PlistManager.sharedInstance.saveValue(value: game.win as AnyObject, forKey: "win")
    }
    
}
