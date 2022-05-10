//
//  CustomTableViewCell.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 18/04/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var corDoStatus: UIImageView!
    @IBOutlet weak var fase: UILabel!
    @IBOutlet weak var cadiado: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
