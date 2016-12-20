//swiftson - swift playground for playing with swift and json
//created by marvin messenzehl

import UIKit
import Foundation


import Foundation

let jsonDict: [String:Any]  =
    [
        "ask": 795.85,
        "bid": 794.92,
        "last": 795.64,
        "high": 798.01,
        "low": 793.0,
        "open": [
            "hour": "",
            "day": 794.21,
            "week": 783.24,
            "month": 747.22,
            "month_3": "",
            "month_6": "",
            "year": ""
        ],
        "averages": [
            "day": 796.00,
            "week": 788.61,
            "month": 786.88
        ],
        "volume": 35033.22,
        "changes": [
            "percent": [
                "day": 0.18,
                "week": 1.58,
                "month": 6.48
            ],
            "price": [
                "day": 1.43,
                "week": 12.40,
                "month": 48.42
            ]
        ],
        "volume_percent": 60.25,
        "timestamp": 1482232909,
        "display_timestamp": "2016-12-20 11:21:49"
]


let price = jsonDict["ask"] as! Double
print("price: \(price)")

let low = jsonDict["low"] as! Double
print("today low: \(low)")

let high = jsonDict["high"] as! Double
print("today high: \(high)")

let openDict = jsonDict["open"] as! [String:Any]
let open = openDict["day"] as! Double
print("today open: \(open)")

let changesDict = jsonDict["changes"] as! [String:Any]
let percentDict = changesDict["percent"] as! [String:Any]
let percent = percentDict["day"] as! Double
print("change: \(percent)")