//
//  MGFilterAdapters.swift
//  MGFilterProvider
//
//  Created by Harly on 2017/8/10.
//  Copyright © 2017年 Harly. All rights reserved.
//

import UIKit

// MARK: -  Trade 对象必须遵循
public protocol OneWay : class
{
    var groupId : Int { get }
    
    var path : Int { get set }
    var parentId : Int { get set }
    var id : Int { get set }
    
    var sons : [OneWay] { get set }
    
    func setSons(items : [OneWay])
}

public extension OneWay
{
    public func setSons(items : [OneWay])
    {
        sons = items
    }
    
    var groupId : Int {
        return 0
    }
    
}

