//
//  File.swift
//  RandomTiles
//
//  Created by Antonin MOLIERES on 03/07/2022.
//

import Foundation
import UIKit

struct Tile {
    
    init(index: Int) {
        self.index = index
        self.intValue = Int.random(in: 0...60)
        self.color = TileColor(value: intValue)
    }
    
    let index: Int
    let intValue: Int
    let color: TileColor
    
    enum TileColor {
        case white
        case black
        case gray
        
        init(value: Int ) {
            switch value {
            case 0...30: self = .white
            case 30...50: self = .black
            case 50...60: self = .gray
            default: self =  .white
            }
        }
        
        var label: String {
            switch self {
            case .white: return "Blanc"
            case .black: return "Noir"
            case .gray: return "Gris"
            }
        }
        
        var colorUI: UIColor {
            switch self {
            case .white: return .white
            case .black: return .black
            case .gray: return .gray
            }
        }
    }
    
}
