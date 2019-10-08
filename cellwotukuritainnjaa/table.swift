//
//  table.swift
//  cellwotukuritainnjaa
//
//  Created by kiyolab02 on 2019/10/08.
//  Copyright © 2019 practice. All rights reserved.
//

import Foundation

class Station : NSObject {
    var name: String
    var prefecture: String
    
    init(name: String, prefecture: String){
        self.name = name as String
        self.prefecture = prefecture as String
    }
}
