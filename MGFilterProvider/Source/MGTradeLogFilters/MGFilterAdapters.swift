//
//  MGFilterAdapters.swift
//  MGFilterProvider
//
//  Created by Harly on 2017/8/10.
//  Copyright © 2017年 Harly. All rights reserved.
//

import UIKit

// MARK: -  Trade 对象必须遵循
protocol Tradable : class
{
    var path : Int { get set }
    var parentId : Int { get set }
    var id : Int { get set }
    var name : String { get set }
    var type : Int { get set }
    
    var sons : [Tradable] { get set }
    
    func setSons(items : [Tradable])
}

extension Tradable
{
    func setSons(items : [Tradable])
    {
        sons = items
    }
}

