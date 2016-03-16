//
//  main.swift
//  TDD_Day2_Homework
//
//  Created by Tyler on 2016/3/16.
//  Copyright © 2016年 Tyler. All rights reserved.
//

import Foundation

print("Hello, World!")

class Order{
    
    func getAmount(products : Array<HarryPotterBook>) -> Double{
        
        
        let count = products.count
        
        var preferential = 1.0
        
        switch count{
        case 2:
            preferential = 0.95
        default:
            preferential = 1.0
        }
        
        
        
        return Double(count) * 100.0 * preferential
    }
    
}


class HarryPotterBook {
    var episode:Int
    var count:Int
    
    init(episode:Int, count:Int){
        self.episode = episode;
        self.count = count
    }
}