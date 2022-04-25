//
//  FaseTableViewCell.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 19/04/22.
//

import UIKit

class FaseTableViewCell: UITableViewCell {

    public weak var faseBotao: FaseBotao?
    
    public let identifier = "FaseTableViewCell"
    
    public func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
<<<<<<< HEAD
        self.addSubview(nomeFase)
        self.addSubview(pontuacao)
        self.clipsToBounds = true
        self.backgroundColor = .white
        self.contentView.layer.cornerRadius = 8
        self.layer.borderWidth = 2
        self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.cornerRadius = 40
=======
        let faseBotao = FaseBotao()
>>>>>>> 83ae487623a05ad7e7cb3617bf60a851470e8424
        
        faseBotao.translatesAutoresizingMaskIntoConstraints = false
        
        faseBotao.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        faseBotao.layer.borderWidth = 1
        faseBotao.layer.cornerRadius = 5
        
        addSubview(faseBotao)
        
        NSLayoutConstraint.activate([
            faseBotao.centerXAnchor.constraint(equalTo: centerXAnchor),
            faseBotao.centerYAnchor.constraint(equalTo: centerYAnchor),
            faseBotao.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
            faseBotao.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8)
        ])
        
        self.faseBotao = faseBotao
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

        // Configure the view for the selected state
    }

}
