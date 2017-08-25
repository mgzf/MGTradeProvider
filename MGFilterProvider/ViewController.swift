//
//  ViewController.swift
//  MGFilterProvider
//
//  Created by Harly on 2017/8/10.
//  Copyright © 2017年 Harly. All rights reserved.
//

import UIKit
import Foundation

class MGTradeFilter : NSObject , OneWay
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
        let json = Bundle.main.path(forResource: "test", ofType: "txt")
        let url = URL(fileURLWithPath: json!)
        
        do
        {
            let data = try Data(contentsOf: url)
            let realJson = try JSONSerialization.jsonObject(with:
                data, options:JSONSerialization.ReadingOptions.mutableContainers) as! [[String : Any]]
            
            let trades = realJson.map({ (json) -> MGTradeFilter in
                let trade = MGTradeFilter()
                trade.setValuesForKeys(json)
                return trade
            })
            
            
            let results = parentGroup(from: trades)
            print("")
            
        }
        catch
        {
            
        }
        
        
        

    }
    
}

