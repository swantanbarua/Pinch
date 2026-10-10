//
//  PageModel.swift
//  Pinch
//
//  Created by Swantan Barua on 10/10/26.
//

import Foundation

struct Page: Identifiable {
    
    // MARK: - PROPERTIES
    let id: Int
    let imageName: String
    var thumbnailName: String {
        return "thumb-\(imageName)"
    }
}

