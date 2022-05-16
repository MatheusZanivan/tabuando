//
//  FaseBotao.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 20/04/22.
//

import UIKit

class FaseBotao: UIControl {

    // variáveis que queremos na tela
    public weak var nomeFase: UILabel?
    public weak var pontuacao: UILabel?
    public weak var cadeado: UIImageView?
    public weak var imageTitle: UIImageView?
    
    var score : Int?
    
//    private var image: UIImage {
//
//        return isLocked ? UIImage(systemName: "lock.fill")!.withTintColor(.black, renderingMode: .alwaysOriginal) : UIImage(systemName: "lock.fill")!.withTintColor(.clear, renderingMode: .alwaysOriginal)
//    }
//
//    public var isLocked = true {
//        didSet {
//            if isLocked {
//                self.cadeado?.isHidden = false
//                self.pontuacao?.isHidden = true
//            } else {
//                self.cadeado?.isHidden = true
//                self.pontuacao?.isHidden = false
//            }
//        }
//    }
    // construtor
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComplement()
    }

    // construtor para o storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initComplement()
    }
    

    // função para inicializar as coisas
    private func initComplement() {
        let nomeFase = UILabel()
        let pontuacao = UILabel()
        let cadeado = UIImageView()
        
        addSubview(nomeFase)
        addSubview(pontuacao)
        addSubview(cadeado)
        
        clipsToBounds = true
        backgroundColor = UIColor(red: 1, green: 0.584, blue: 0, alpha: 1)
        
        nomeFase.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        nomeFase.font = UIFont(name: "SFProText-Semibold", size: 30)
        
        pontuacao.textColor = UIColor(red: 1, green: 0.871, blue: 0.363, alpha: 1)
        
        nomeFase.translatesAutoresizingMaskIntoConstraints = false
        pontuacao.translatesAutoresizingMaskIntoConstraints = false
        cadeado.translatesAutoresizingMaskIntoConstraints = false
        
//        cadeado.image = image
        
        NSLayoutConstraint.activate([
            nomeFase.centerXAnchor.constraint(equalTo: centerXAnchor),
            nomeFase.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            pontuacao.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            pontuacao.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            cadeado.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            cadeado.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        
//        if(score){}
        
        
        self.nomeFase = nomeFase
        self.pontuacao = pontuacao
        self.cadeado = cadeado
        
    }
}
