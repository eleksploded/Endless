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
    var LogNum:Int = 0
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
    
    var active:Int = 1
    var win:Int = 0
   // print("Main Vsriables Loaded")
    
    //Do the math
    func math() {
        //print("Math Start")
        
        //print("Log Before = " + String(Log))
        Log += (LogNum * 2)
        //print("Log After = " + String(Log))
        
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
        Energy += (EnergyNum * 2)
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
        
        //print("Math End")
    }
}
