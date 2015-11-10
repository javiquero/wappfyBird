//
//  ServiceProvider.swift
//  PrettyPreview
//
//  Created by Javier Quero Ojeda on 10/11/15.
//  Copyright © 2015 Javier Quero Ojeda. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return TVTopShelfContentStyle.Inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "wappfybird.item1", container: nil)!)
        item1?.imageURL = NSURL(string: "https://raw.githubusercontent.com/javiquero/wappfyBird/master/WappfyBird/WappfyBirdImg1.png")
        let item2 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "wappfybird.item2", container: nil)!)
        item2?.imageURL = NSURL(string: "https://raw.githubusercontent.com/javiquero/wappfyBird/master/WappfyBird/WappfyBirdImg2.png")
        
        return [item1!,item2!]
    }

}

