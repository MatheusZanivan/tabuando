//
//  Game1ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 19/04/22.
//

import UIKit

class Game1ViewController: UIViewController {
    private weak var faseImage: UIImageView?
    private weak var faseLabel: UILabel?
    private weak var desafioView: UIView?
    private weak var desafioLabel: UILabel?
    private weak var igualLabel: UILabel?
    private weak var resultadoView: UIView?
    private weak var resposta1View: UIView?
    private weak var resposta1Label: UILabel?
    private weak var resposta2View: UIView?
    private weak var resposta2Label: UILabel?
    private weak var resposta3View: UIView?
    private weak var resposta3Label: UILabel?
    private weak var resposta4View: UIView?
    private weak var resposta4Label: UILabel?
    private weak var centralizadorView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let faseImage = UIImageView()
        let faseLabel = UILabel()
        let desafioView = UIView()
        let desafioLabel = UILabel()
        let igualLabel = UILabel()
        let resultadoView = UIView()
        let resposta1View = UIView()
        let resposta1Label = UILabel()
        let resposta2View = UIView()
        let resposta2Label = UILabel()
        let resposta3View = UIView()
        let resposta3Label = UILabel()
        let resposta4View = UIView()
        let resposta4Label = UILabel()
        let centralizadorView = UIView()
        
       
        
        self.view.addSubview(faseImage)
        faseImage.addSubview(faseLabel)
        self.view.addSubview(desafioView)
        desafioView.addSubview(desafioLabel)
        desafioView.addSubview(igualLabel)
        desafioView.addSubview(resultadoView)
        self.view.addSubview(resposta1View)
        resposta1View.addSubview(resposta1Label)
        self.view.addSubview(resposta2View)
        resposta2View.addSubview(resposta2Label)
        self.view.addSubview(resposta3View)
        resposta3View.addSubview(resposta3Label)
        self.view.addSubview(resposta4View)
        resposta4View.addSubview(resposta4Label)
        self.view.addSubview(centralizadorView)
        view.sendSubviewToBack(centralizadorView)
        
        faseImage.image = UIImage(named: "Ativo 15")
        
        faseLabel.text = "1x?"
        faseLabel.font = UIFont.systemFont(ofSize: 26)
        faseLabel.textColor = .white
        
        desafioView.backgroundColor = .systemYellow
        desafioView.layer.cornerRadius = 20
        desafioLabel.textAlignment = .center
        desafioLabel.text = "1 x 1 = "
        desafioLabel.font = UIFont.systemFont(ofSize: 50)
        desafioLabel.textColor = .white
        
        resultadoView.backgroundColor = .systemPurple
        resultadoView.layer.cornerRadius = 27
        
        resposta1View.backgroundColor = .systemPurple
        resposta1View.layer.cornerRadius = 27
//        resposta1Label.text = "1"
        resposta1Label.font = UIFont.systemFont(ofSize: 40)
        resposta1Label.textAlignment = .center
        resposta1Label.textColor = .white
        
        
        resposta2View.backgroundColor = .systemPurple
        resposta2View.layer.cornerRadius = 27
//        resposta2Label.text = "1"
        resposta2Label.font = UIFont.systemFont(ofSize: 50)
        resposta2Label.textColor = .white
        
        resposta3View.backgroundColor = .systemPurple
        resposta3View.layer.cornerRadius = 27
//        resposta3Label.text = "1"
        resposta3Label.font = UIFont.systemFont(ofSize: 50)
        resposta3Label.textColor = .white
        
        resposta4View.backgroundColor = .systemPurple
        resposta4View.layer.cornerRadius = 27
//        resposta4Label.text = "1"
        resposta4Label.font = UIFont.systemFont(ofSize: 50)
        resposta4Label.textColor = .white
        
        
        faseImage.translatesAutoresizingMaskIntoConstraints = false
        faseLabel.translatesAutoresizingMaskIntoConstraints = false
        desafioView.translatesAutoresizingMaskIntoConstraints = false
        desafioLabel.translatesAutoresizingMaskIntoConstraints = false
        igualLabel.translatesAutoresizingMaskIntoConstraints = false
        resultadoView.translatesAutoresizingMaskIntoConstraints = false
        resposta1View.translatesAutoresizingMaskIntoConstraints = false
        resposta1Label.translatesAutoresizingMaskIntoConstraints = false
        resposta2View.translatesAutoresizingMaskIntoConstraints = false
        resposta2Label.translatesAutoresizingMaskIntoConstraints = false
        resposta3View.translatesAutoresizingMaskIntoConstraints = false
        resposta3Label.translatesAutoresizingMaskIntoConstraints = false
        resposta4View.translatesAutoresizingMaskIntoConstraints = false
        resposta4Label.translatesAutoresizingMaskIntoConstraints = false
        centralizadorView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            faseImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            faseImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            faseImage.heightAnchor.constraint(equalToConstant: 100),
            faseImage.widthAnchor.constraint(equalToConstant: 110),
            
            faseLabel.centerYAnchor.constraint(equalTo: faseImage.centerYAnchor),
            faseLabel.centerXAnchor.constraint(equalTo: faseImage.centerXAnchor),
            //--------------------------------------------------------------------------------
            
            desafioView.widthAnchor.constraint(equalToConstant: 287),
            desafioView.heightAnchor.constraint(equalToConstant: 90),
            desafioView.centerYAnchor.constraint(equalTo: faseImage.bottomAnchor, constant: 150),
            desafioView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            desafioLabel.widthAnchor.constraint(equalToConstant: 135),
            desafioLabel.heightAnchor.constraint(equalToConstant: 40),
            desafioLabel.leftAnchor.constraint(equalTo: desafioView.leftAnchor, constant: 37),
            desafioLabel.centerYAnchor.constraint(equalTo: desafioView.centerYAnchor),
            
            resultadoView.widthAnchor.constraint(equalToConstant: 72),
            resultadoView.heightAnchor.constraint(equalToConstant: 72),
//            resultadoView.topAnchor.constraint(equalTo: desafioView.topAnchor, constant: 9),
            resultadoView.centerYAnchor.constraint(equalTo: desafioView.centerYAnchor),
            resultadoView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 247),
            
            //--------------------------------------------------------------------------------
            centralizadorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centralizadorView.widthAnchor.constraint(equalToConstant: 240),
            centralizadorView.heightAnchor.constraint(equalToConstant: 240),
            centralizadorView.topAnchor.constraint(equalTo: desafioView.bottomAnchor, constant: 160),
            
            resposta1View.widthAnchor.constraint(equalToConstant: 110),
            resposta1View.heightAnchor.constraint(equalToConstant: 110),
            resposta1View.topAnchor.constraint(equalTo: centralizadorView.topAnchor),
            resposta1View.leftAnchor.constraint(equalTo: centralizadorView.leftAnchor),
            
            
            resposta1Label.widthAnchor.constraint(equalToConstant: 40),
            resposta1Label.heightAnchor.constraint(equalToConstant: 40),
            resposta1Label.centerXAnchor.constraint(equalTo: resposta1View.centerXAnchor),
            resposta1Label.centerYAnchor.constraint(equalTo: resposta1View.centerYAnchor),
            
            resposta2View.widthAnchor.constraint(equalToConstant: 110),
            resposta2View.heightAnchor.constraint(equalToConstant: 110),
            resposta2View.topAnchor.constraint(equalTo: centralizadorView.topAnchor),
            resposta2View.rightAnchor.constraint(equalTo: centralizadorView.rightAnchor),
            
            
            resposta2Label.widthAnchor.constraint(equalToConstant: 40),
            resposta2Label.heightAnchor.constraint(equalToConstant: 40),
            resposta2Label.centerXAnchor.constraint(equalTo: resposta2View.centerXAnchor),
            resposta2Label.centerYAnchor.constraint(equalTo: resposta2View.centerYAnchor),
            
            resposta3View.widthAnchor.constraint(equalToConstant: 110),
            resposta3View.heightAnchor.constraint(equalToConstant: 110),
            resposta3View.bottomAnchor.constraint(equalTo: centralizadorView.bottomAnchor),
            resposta3View.leftAnchor.constraint(equalTo: centralizadorView.leftAnchor),
            
            resposta3Label.widthAnchor.constraint(equalToConstant: 40),
            resposta3Label.heightAnchor.constraint(equalToConstant: 40),
            resposta3Label.centerXAnchor.constraint(equalTo: resposta3View.centerXAnchor),
            resposta3Label.centerYAnchor.constraint(equalTo: resposta3View.centerYAnchor),
            
            resposta4View.widthAnchor.constraint(equalToConstant: 110),
            resposta4View.heightAnchor.constraint(equalToConstant: 110),
            resposta4View.bottomAnchor.constraint(equalTo: centralizadorView.bottomAnchor),
            resposta4View.rightAnchor.constraint(equalTo: centralizadorView.rightAnchor),
            
            resposta4Label.widthAnchor.constraint(equalToConstant: 40),
            resposta4Label.heightAnchor.constraint(equalToConstant: 40),
            resposta4Label.centerXAnchor.constraint(equalTo: resposta4View.centerXAnchor),
            resposta4Label.centerYAnchor.constraint(equalTo: resposta4View.centerYAnchor),
        ])
        
        
    }
    
    
   
}


