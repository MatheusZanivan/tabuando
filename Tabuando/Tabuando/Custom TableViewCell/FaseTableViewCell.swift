//
//  FaseTableViewCell.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 19/04/22.
//

import UIKit

class FaseTableViewCell: UITableViewCell {

    var nomeFase = UILabel()
    var pontuacao = UILabel()
    
    public let identifier = "FaseTableViewCell"
    
    public func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(nomeFase)
        self.addSubview(pontuacao)
        self.clipsToBounds = true
        self.backgroundColor = .white
        self.contentView.layer.cornerRadius = 8
        self.layer.borderWidth = 2
        self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.cornerRadius = 40
        
        nomeFase.translatesAutoresizingMaskIntoConstraints = false
        pontuacao.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nomeFase.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nomeFase.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            pontuacao.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            pontuacao.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

        // Configure the view for the selected state
    }

}
