//
//  NSDate+Extensions.swift
//  LightGym
//
//  Created by Pavel Gerasimov on 13.03.2018.
//  Copyright © 2018 Pavel Gerasimov. All rights reserved.
//

import Foundation

extension String{
    
    
    static func dateFromString(with date: Date) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd"
        
        return formatter.string(from: date)
        
    }
    
}
