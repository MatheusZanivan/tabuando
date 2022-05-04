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
    private weak var resposta1Button: UIButton?
    private weak var resposta2Button: UIButton?
    private weak var resposta3Button: UIButton?
    private weak var resposta4Button: UIButton?
    private weak var centralizadorView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let faseImage = UIImageView()
        let faseLabel = UILabel()
        let desafioView = UIView()
        let desafioLabel = UILabel()
        let igualLabel = UILabel()
        let resultadoView = UIView()
        let resposta1Button = UIButton()
        let resposta2Button = UIButton()
        let resposta3Button = UIButton()
        let resposta4Button = UIButton()
        let centralizadorView = UIView()
        
       
        
        self.view.addSubview(faseImage)
        faseImage.addSubview(faseLabel)
        self.view.addSubview(desafioView)
        desafioView.addSubview(desafioLabel)
        desafioView.addSubview(igualLabel)
        desafioView.addSubview(resultadoView)
        self.view.addSubview(resposta1Button)
        
        self.view.addSubview(resposta2Button)
        
        self.view.addSubview(resposta3Button)
        
        self.view.addSubview(resposta4Button)
        
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
        
        resposta1Button.backgroundColor = .systemPurple
        resposta1Button.layer.cornerRadius = 27
        resposta1Button.setTitle("1", for: .normal)
        resposta1Button.tag = 1
        resposta1Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
//        resposta1Label.text = "1"
        
        
        
        resposta2Button.backgroundColor = .systemPurple
        resposta2Button.layer.cornerRadius = 27
//        resposta2Label.text = "1"
        resposta2Button.tag = 2
        resposta2Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        resposta3Button.backgroundColor = .systemPurple
        resposta3Button.layer.cornerRadius = 27
//        resposta3Label.text = "1"
        resposta3Button.tag = 3
        resposta3Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        resposta4Button.backgroundColor = .systemPurple
        resposta4Button.layer.cornerRadius = 27
//        resposta4Label.text = "1"
        resposta4Button.tag = 4
        resposta4Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        
        faseImage.translatesAutoresizingMaskIntoConstraints = false
        faseLabel.translatesAutoresizingMaskIntoConstraints = false
        desafioView.translatesAutoresizingMaskIntoConstraints = false
        desafioLabel.translatesAutoresizingMaskIntoConstraints = false
        igualLabel.translatesAutoresizingMaskIntoConstraints = false
        resultadoView.translatesAutoresizingMaskIntoConstraints = false
        resposta1Button.translatesAutoresizingMaskIntoConstraints = false
        resposta2Button.translatesAutoresizingMaskIntoConstraints = false
        resposta3Button.translatesAutoresizingMaskIntoConstraints = false
        resposta4Button.translatesAutoresizingMaskIntoConstraints = false
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
            
            resposta1Button.widthAnchor.constraint(equalToConstant: 110),
            resposta1Button.heightAnchor.constraint(equalToConstant: 110),
            resposta1Button.topAnchor.constraint(equalTo: centralizadorView.topAnchor),
            resposta1Button.leftAnchor.constraint(equalTo: centralizadorView.leftAnchor),
            
            resposta2Button.widthAnchor.constraint(equalToConstant: 110),
            resposta2Button.heightAnchor.constraint(equalToConstant: 110),
            resposta2Button.topAnchor.constraint(equalTo: centralizadorView.topAnchor),
            resposta2Button.rightAnchor.constraint(equalTo: centralizadorView.rightAnchor),

            resposta3Button.widthAnchor.constraint(equalToConstant: 110),
            resposta3Button.heightAnchor.constraint(equalToConstant: 110),
            resposta3Button.bottomAnchor.constraint(equalTo: centralizadorView.bottomAnchor),
            resposta3Button.leftAnchor.constraint(equalTo: centralizadorView.leftAnchor),
            
            resposta4Button.widthAnchor.constraint(equalToConstant: 110),
            resposta4Button.heightAnchor.constraint(equalToConstant: 110),
            resposta4Button.bottomAnchor.constraint(equalTo: centralizadorView.bottomAnchor),
            resposta4Button.rightAnchor.constraint(equalTo: centralizadorView.rightAnchor)
        ])
        
        self.faseImage = faseImage
        self.faseLabel = faseLabel
        self.desafioView = desafioView
        self.desafioLabel = desafioLabel
        self.igualLabel = igualLabel
        self.resultadoView = resultadoView
        self.resposta1Button = resposta1Button
        self.resposta2Button = resposta2Button
        self.resposta3Button = resposta3Button
        self.resposta4Button = resposta4Button
        self.centralizadorView = centralizadorView
    }
    @objc func resposta(_ sender: UIButton){
//        print(sender.tag)
    }
   
}
