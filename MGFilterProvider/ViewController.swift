//
//  ViewController.swift
//  MGFilterProvider
//
//  Created by Harly on 2017/8/10.
//  Copyright © 2017年 Harly. All rights reserved.
//

import UIKit

class MGTradeFilter : OneWay
{
    var path : Int = 0
    var parentId : Int = 0
    var id : Int = 0
    var name : String = ""
    var type : Int = 0
    
    var sons : [OneWay] = [OneWay]()
}

class ViewController: UIViewController , MGParentSonProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapped(_ sender: UIButton)
    {
        let trade1 = MGTradeFilter()
        trade1.id = 0
        trade1.name = "全部"
        trade1.parentId = -1
        trade1.path = 1
        
        let trade2 = MGTradeFilter()
        trade2.id = 1
        trade2.name = "租约"
        trade2.parentId = -1
        trade2.path = 1
        
        let trade3 = MGTradeFilter()
        trade3.id = 2
        trade3.name = "金融"
        trade3.parentId = -1
        trade3.path = 1
        
        let trade4 = MGTradeFilter()
        trade4.id = 3
        trade4.name = "不限"
        trade4.parentId = -1
        trade4.path = 2
        
        let trade5 = MGTradeFilter()
        trade5.id = 4
        trade5.name = "房屋租金"
        trade5.parentId = -1
        trade5.path = 2
        
        let trade6 = MGTradeFilter()
        trade6.id = 5
        trade6.name = "门卡押金"
        trade6.parentId = -1
        trade6.path = 3
        
        let trade7 = MGTradeFilter()
        trade7.id = 6
        trade7.name = "房屋押金"
        trade7.parentId = -1
        trade7.path = 3
        
        let trade8 = MGTradeFilter()
        trade8.id = 7
        trade8.name = "超级房屋押金"
        trade8.parentId = 6
        trade8.path = 3
        
        let trade9 = MGTradeFilter()
        trade9.id = 9
        trade9.name = "超级ss房屋押金"
        trade9.parentId = 6
        trade9.path = 3
        
        let trade10 = MGTradeFilter()
        trade10.id = 10
        trade10.name = "我是小儿子"
        trade10.parentId = 9
        trade10.path = 3
        
        let _ = parentGroup(from: [trade1,trade2,trade3,trade4,trade5,trade6,trade7,trade8,trade9,trade10])
    }
    
}

