//
//  Engine.swift
//  SnakeGame
//
//  Created by Куат Оралбеков on 23.08.2023.
//

import Foundation
import SwiftUI

class Engine {
    
    private init(){}
    
    static let shared = Engine()
    
    let minX = UIScreen.main.bounds.minX
    
    let maxX = UIScreen.main.bounds.maxX
    
    let minY = UIScreen.main.bounds.minY
    
    let maxY = UIScreen.main.bounds.maxY
    
    func cnangeRectPos(snakeSize: CGFloat) -> CGPoint {
        
        let rows = Int(maxX / snakeSize )
        let columns = Int(maxY / snakeSize )
        
        let randomX = Int.random(in: 1..<rows) * Int(snakeSize)
        let randomY = Int.random(in: 1..<columns) * Int(snakeSize)
        
        return CGPoint(x: randomX, y: randomY)
    }
    
}


