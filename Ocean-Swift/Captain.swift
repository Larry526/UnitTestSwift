//
//  Captain.swift
//  Ocean-Swift
//
//  Created by Larry Luk on 2017-12-07.
//  Copyright © 2017 com.lighthouse-labs. All rights reserved.
//

import UIKit

class Captain: NSObject, CaptainDelegate {

    let captainType : CaptainType
    
    enum CaptainType {
        case Normal, Drunk
    }
    
    init(captainType : CaptainType) {
        self.captainType = captainType
    }
    
    
    func goFish(ocean: Ocean, depth: Int, tile: Int) -> Fish? {
        switch captainType {
        case CaptainType.Drunk:
            return nil
        case CaptainType.Normal:
            return ocean.fishAt(depth: depth, tile: tile)
        }
    }
    
    

}
