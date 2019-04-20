//
//  Items.swift
//  Universal Reference
//
//  Created by Denis Bystruev on 20/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

typealias Items = [Item]

extension Array where Element == Item {
    static var all: Items {
        return [
            Item(data: .image(UIImage(named: "winter")!)),
            Item(data: .text("Однажды в студёную зимнюю пору я из лесу вышел; был сильный мороз")),
            Item(data: .list(name: "Зима", indexes: [-2, -1]))
        ]
    }
}
