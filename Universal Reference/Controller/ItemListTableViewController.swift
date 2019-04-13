//
//  ItemListTableViewController.swift
//  Universal Reference
//
//  Created by Denis Bystruev on 06/04/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ItemListTableViewController: UITableViewController {
    var items = Item.loadSample()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let item = items[row]
        let itemType = item.data
        let cell: UITableViewCell
        
        switch itemType {
            
        case let .image(image):
            let imageCell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
            imageCell.customImageView.image = image
            cell = imageCell
            
        case .list(name: let name, indexes: _):
            let listCell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
            listCell.nameLabel.text = name
            cell = listCell
            
        case .text(let text):
            let textCell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            textCell.customTextLabel.text = text
            cell = textCell
        }
        
        return cell
    }
}
