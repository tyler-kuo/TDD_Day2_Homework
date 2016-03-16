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
        
        var bookgroupCounts = [Int]()
        var amount = 0.0
        for product in products{
            for index in 1...product.count{
                if bookgroupCounts.count < index{
                    bookgroupCounts.append(1)
                }else{
                    bookgroupCounts[index - 1] += 1
                }
            }
        }
        
        
        
        
        for bookgroupCount in bookgroupCounts{
        
            let count = bookgroupCount
            var preferential = 1.0
            switch count{
            case 2:
                preferential = 0.95
            case 3:
                preferential = 0.9
            case 4:
                preferential = 0.8
            case 5:
                preferential = 0.75
            default:
                preferential = 1.0
            }
            
            amount += Double(bookgroupCount) * 100.0 * preferential

        }
        
        
        
        
        return amount
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