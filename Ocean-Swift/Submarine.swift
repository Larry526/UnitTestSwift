//
//  Submarine.swift
//  Ocean-Swift
//
//  Created by Larry Luk on 2017-12-05.
//  Copyright © 2017 com.lighthouse-labs. All rights reserved.
//

import UIKit

protocol CaptainDelegate {
    func goFish(ocean : Ocean, depth : Int, tile : Int) -> Fish
}

class Submarine: NSObject {
    
    var depth = 0
    var tile = 0
    var captainDelegate : CaptainDelegate?
    
    func dive() {
        if depth >= 1 {
            print("Sub is already below surface!")
        } else {
            depth += 1
        }
    }
    
    func surface() {
        if depth <= 1 {
            depth -= 1
        } else {
            print("Sub is already above surface!")
        }
    }
    
    func descend() {
        if depth <= 1 || depth >= 9 {
        } else {
            depth += 1
        }
    }
    
    func ascend() {
        if depth > 1 {
            depth -= 1
        } else {
            
        }
    }
    
    func forward() {
        if depth >= 1 && tile <= 4 {
            tile += 1
        } else {
            
        }
    }
    
    func backwards() {
        if depth >= 1 && tile >= 1 {
            tile -= 1

        }
    }
    
    func goFish(ocean : Ocean, depth : Int, tile : Int) -> Fish {
        let fish = captainDelegate?.goFish(ocean: ocean, depth: depth, tile: tile)
        return fish!
    }
    
}
