//
//  tituloDaCell.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 28/04/22.
//

import UIKit

class tituloDaCell: UIView {
    let titleImage : UIImageView = .init(image: .init(imageLiteralResourceName: "Tabuando"))
    override init(frame: CGRect) {
            super.init(frame: frame)
            addSubview(titleImage)
//        falo para o danadinho do swift quem manda nessa porr*
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            titleImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleImage.heightAnchor.constraint(equalToConstant: 47),
            titleImage.widthAnchor.constraint(equalToConstant: 224)
        ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    
    
    
}
