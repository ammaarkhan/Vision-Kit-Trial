//
//  ScanData.swift
//  Scan-Ocr
//
//  Created by Ammaar Khan on 16/11/2022.
//

import Foundation

struct ScanData: Identifiable {
    var id = UUID()
    let content:String
    
    init(content:String) {
        self.content = content
          
    }
}
