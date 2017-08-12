//
//  MGTradeFilterProvider.swift
//  MogoPartner
//
//  Created by Harly on 2017/8/9.
//  Copyright © 2017年 mogoroom. All rights reserved.
//

import UIKit
import MGArrayExtensions

// MARK: -  Trade对象Provider
public protocol MGParentSonProvider
{
    /// 分组找儿子方法
    ///
    /// - Parameter trades: 原始trades
    /// - Returns: 分组完了后的数据
    func parentGroup<Element : OneWay>(from items : [Element]) -> [Int : [Element]]
}

// MARK: -  Filter Provider extension
extension MGParentSonProvider
{
    func parentGroup<Element : OneWay>(from items : [Element]) -> [Int : [Element]]
    {
        //Group
        let groupedTrades = items.groupBy { (filterItem : Element) -> Int in
            return filterItem.path
        }
        
        //Find son
        var groupedResult = [Int : [Element]]()
        groupedTrades.forEach { (group) in
            
            var items = group.items
            items.forEach({ (item) in
                let sons = items.filter { $0.parentId == item.id }
                item.setSons(items: sons)
                
                sons.forEach({ (trade) in
                    let removedIndex = items.index(where: { $0.id == trade.id })
                    items.remove(at: removedIndex!)
                })
            })
            
            groupedResult[group.key] = items
        }
        
        return groupedResult
    }
}