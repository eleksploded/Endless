//
//  MainGame.swift
//  Endless
//
//  Created by Nathan on 11/2/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

import Foundation
class MainGame {
    //let view = GameViewController()
    //Variables
    var LogNum:Int = PlistManager.sharedInstance.getValueForKey(key: "LogNum")
    var StoneNum:Int = 0
    var PlankNum:Int = 0
    var CharcoalNum:Int = 0
    var CoalNum:Int = 0
    var OreNum:Int = 0
    var IronNum:Int = 0
    var SteelNum:Int = 0
    var EnergyNum:Int = 0
    var SandNum:Int = 0
    var GlassNum:Int = 0
    var WaterNum:Int = 0
    var ConcreteNum:Int = 0
    var OilNum:Int = 0
    var PlasticNum:Int = 0
    var FiberNum:Int = 0
    
    var Log:Int = 0
    var Stone:Int = 0
    var Plank:Int = 0
    var Charcoal:Int = 0
    var Coal:Int = 0
    var Ore:Int = 0
    var Iron:Int = 0
    var Steel:Int = 0
    var Energy:Int = 0
    var Sand:Int = 0
    var Glass:Int = 0
    var Water:Int = 0
    var Concrete:Int = 0
    var Oil:Int = 0
    var Plastic:Int = 0
    var Fiber:Int = 0
    
    var active:Int = 0
    var win:Int = 0
   // print("Main Vsriables Loaded")
    
    func load() {
        
    LogNum = PlistManager.sharedInstance.getValueForKey(key: "LogNum")
    StoneNum = (PlistManager.sharedInstance.getValueForKey(key: "StoneNum"))
    PlankNum = (PlistManager.sharedInstance.getValueForKey(key: "BoardNum"))
    CharcoalNum = (PlistManager.sharedInstance.getValueForKey(key: "CharcoalNum"))
    CoalNum = (PlistManager.sharedInstance.getValueForKey(key: "CoalNum"))
    OreNum = (PlistManager.sharedInstance.getValueForKey(key: "OreNum"))
    IronNum = (PlistManager.sharedInstance.getValueForKey(key: "IronNum"))
    SteelNum = (PlistManager.sharedInstance.getValueForKey(key: "SteelNum"))
    EnergyNum = (PlistManager.sharedInstance.getValueForKey(key: "EnergyNum"))
    SandNum = (PlistManager.sharedInstance.getValueForKey(key: "SandNum"))
    GlassNum = (PlistManager.sharedInstance.getValueForKey(key: "GlassNum"))
    WaterNum = (PlistManager.sharedInstance.getValueForKey(key: "WaterNum"))
    ConcreteNum = (PlistManager.sharedInstance.getValueForKey(key: "ConcreteNum"))
    OilNum = (PlistManager.sharedInstance.getValueForKey(key: "OilNum"))
    PlasticNum = (PlistManager.sharedInstance.getValueForKey(key: "PlasticNum"))
    FiberNum = (PlistManager.sharedInstance.getValueForKey(key: "FiberNum"))
    
    Log = (PlistManager.sharedInstance.getValueForKey(key: "Log"))
    Stone = (PlistManager.sharedInstance.getValueForKey(key: "Stone"))
    Plank = (PlistManager.sharedInstance.getValueForKey(key: "Board"))
    Charcoal = (PlistManager.sharedInstance.getValueForKey(key: "Charcoal"))
    Coal = (PlistManager.sharedInstance.getValueForKey(key: "Coal"))
    Ore = (PlistManager.sharedInstance.getValueForKey(key: "Ore"))
    Iron = (PlistManager.sharedInstance.getValueForKey(key: "Iron"))
    Steel = (PlistManager.sharedInstance.getValueForKey(key: "Steel"))
    Energy = (PlistManager.sharedInstance.getValueForKey(key: "Energy"))
    Sand = (PlistManager.sharedInstance.getValueForKey(key: "Sand"))
    Glass = (PlistManager.sharedInstance.getValueForKey(key: "Glass"))
    Water = (PlistManager.sharedInstance.getValueForKey(key: "Water"))
    Concrete = (PlistManager.sharedInstance.getValueForKey(key: "Concrete"))
    Oil = (PlistManager.sharedInstance.getValueForKey(key: "CrudeOil"))
    Plastic = (PlistManager.sharedInstance.getValueForKey(key: "Plastic"))
    Fiber = (PlistManager.sharedInstance.getValueForKey(key: "Fiber"))
    
    win = PlistManager.sharedInstance.getValueForKey(key: "win")
    }

    //Saving Function
    func save() {
        PlistManager.sharedInstance.saveValue(value: Log as AnyObject, forKey: "Log")
        PlistManager.sharedInstance.saveValue(value: Stone as AnyObject, forKey: "Stone")
        PlistManager.sharedInstance.saveValue(value: Plank as AnyObject, forKey: "Board")
        PlistManager.sharedInstance.saveValue(value: Charcoal as AnyObject, forKey: "Charcoal")
        PlistManager.sharedInstance.saveValue(value: Coal as AnyObject, forKey: "Coal")
        PlistManager.sharedInstance.saveValue(value: Ore as AnyObject, forKey: "Ore")
        PlistManager.sharedInstance.saveValue(value: Iron as AnyObject, forKey: "Iron")
        PlistManager.sharedInstance.saveValue(value: Steel as AnyObject, forKey: "Steel")
        PlistManager.sharedInstance.saveValue(value: Energy as AnyObject, forKey: "Energy")
        PlistManager.sharedInstance.saveValue(value: Sand as AnyObject, forKey: "Sand")
        PlistManager.sharedInstance.saveValue(value: Glass as AnyObject, forKey: "Glass")
        PlistManager.sharedInstance.saveValue(value: Water as AnyObject, forKey: "Water")
        PlistManager.sharedInstance.saveValue(value: Concrete as AnyObject, forKey: "Concrete")
        PlistManager.sharedInstance.saveValue(value: Oil as AnyObject, forKey: "CrudeOil")
        PlistManager.sharedInstance.saveValue(value: Plastic as AnyObject, forKey: "Plastic")
        PlistManager.sharedInstance.saveValue(value: Fiber as AnyObject, forKey: "Fiber")
        
        PlistManager.sharedInstance.saveValue(value: LogNum as AnyObject, forKey: "LogNum")
        PlistManager.sharedInstance.saveValue(value: StoneNum as AnyObject, forKey: "StoneNum")
        PlistManager.sharedInstance.saveValue(value: PlankNum as AnyObject, forKey: "PlankNum")
        PlistManager.sharedInstance.saveValue(value: CharcoalNum as AnyObject, forKey: "CharcoalNum")
        PlistManager.sharedInstance.saveValue(value: CoalNum as AnyObject, forKey: "CoalNum")
        PlistManager.sharedInstance.saveValue(value: OreNum as AnyObject, forKey: "OreNum")
        PlistManager.sharedInstance.saveValue(value: IronNum as AnyObject, forKey: "IronNum")
        PlistManager.sharedInstance.saveValue(value: SteelNum as AnyObject, forKey: "SteelNum")
        PlistManager.sharedInstance.saveValue(value: EnergyNum as AnyObject, forKey: "EnergyNum")
        PlistManager.sharedInstance.saveValue(value: SandNum as AnyObject, forKey: "SandNum")
        PlistManager.sharedInstance.saveValue(value: GlassNum as AnyObject, forKey: "GlassNum")
        PlistManager.sharedInstance.saveValue(value: WaterNum as AnyObject, forKey: "WaterNum")
        PlistManager.sharedInstance.saveValue(value: ConcreteNum as AnyObject, forKey: "ConcreteNum")
        PlistManager.sharedInstance.saveValue(value: OilNum as AnyObject, forKey: "OilNum")
        PlistManager.sharedInstance.saveValue(value: PlasticNum as AnyObject, forKey: "PlasticNum")
        PlistManager.sharedInstance.saveValue(value: FiberNum as AnyObject, forKey: "FiberNum")
        
        PlistManager.sharedInstance.saveValue(value: win as AnyObject, forKey: "win")
    }
    
    
    
    
    //Do the math
    func math() {
        print("Math Start")
        
        print("Log Before = " + String(Log))
        Log += (LogNum * 2)
        print("Log After = " + String(Log))
        
        Stone += (StoneNum * 2)
        
        if Log >= PlankNum * 8 {
            Log -= PlankNum * 8
            Plank = Plank + (PlankNum * 2)
        }
        
        if Log >= CharcoalNum * 8 {
            Log -= CharcoalNum * 8
            Charcoal = Charcoal + (CharcoalNum * 2)
        }
        
        Coal = Coal + (CoalNum * 2)
        
        Ore = Ore + (OreNum * 2)
        
        if Charcoal >= IronNum * 4 && Ore >= IronNum * 4 {
            Charcoal -= IronNum * 4
            Ore -= IronNum * 4
            Iron = Iron + (IronNum * 2)
        }
        
        if Iron >= SteelNum * 4 && Coal >= SteelNum * 4 {
            Iron -= SteelNum * 4
            Coal -= SteelNum * 4
            Steel = Steel + (SteelNum * 2)
        }
        
        //REDO!!!
        Energy = Energy + (EnergyNum * 2)
        //End REDO!!!
        
        if Energy >= SandNum * 8{
            Energy -= SandNum * 8
            Sand = Sand + (SandNum * 2)
        }
        
        if Energy >= GlassNum * 16 && Sand >= GlassNum * 16 {
            Energy -= GlassNum * 16
            Sand -= GlassNum * 16
            Glass = Glass + (GlassNum * 2)
        }
        
        if Energy >= WaterNum * 16{
            Energy -= WaterNum * 16
            Water = Water + (WaterNum * 2)
        }
        
        if Stone >= ConcreteNum * 1024 && Sand >= ConcreteNum * 32 && Water >= ConcreteNum * 16 {
            Stone -= ConcreteNum * 1024
            Sand -= ConcreteNum * 32
            Water -= ConcreteNum * 16
            Concrete = Concrete + (ConcreteNum * 2)
        }
        
        if Energy >= OilNum * 512 {
            Energy -= OilNum * 512
            Oil = Oil + (OilNum * 2)
        }
        
        if Coal >= PlasticNum * 1024 && Energy >= PlasticNum * 256 && Oil >= PlasticNum * 32 {
            Coal -= PlasticNum * 1024
            Energy -= PlasticNum * 256
            Oil -= PlasticNum * 32
            Plastic = Plastic + (PlasticNum * 2)
        }
        
        if Iron >= FiberNum * 2048 && Energy >= FiberNum * 1024 && Glass >= FiberNum * 256 && Water >= FiberNum * 512 && Plastic >= FiberNum * 64{
            Iron -= FiberNum * 2048
            Energy -= FiberNum * 1024
            Glass -= FiberNum * 256
            Water -= FiberNum * 512
            Plastic -= FiberNum * 64
            Fiber = Fiber + (FiberNum * 2)
        }
        
        if Fiber >= 10000{
            win = 1
        }
        
        print("Math End")
    }
}
