//
//  feedbackViewController.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 04/05/22.
//

import UIKit

class feedbackViewController: UIViewController {
    
    private weak var fraseDeFeedbackView : UIView?
    private weak var fraseDeFeedbackLabel : UILabel?
    private weak var logoFeedbackImage : UIImageView?
    private weak var voceTirouLabel : UILabel?
    private weak var notaLabel : UILabel?
    private weak var telaInicialButton : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()

           let fraseDeFeedbackView = UIView()
           let fraseDeFeedbackLabel = UILabel()
           let logoFeedbackImage = UIImageView()
           let voceTirouLabel = UILabel()
           let notaLabel = UILabel()
           let telaInicialButton = UIButton()
        
        
        self.view.addSubview(fraseDeFeedbackView)
        self.view.addSubview(fraseDeFeedbackLabel)
        self.view.addSubview(logoFeedbackImage)
        self.view.addSubview(voceTirouLabel)
        self.view.addSubview(notaLabel)
        self.view.addSubview(telaInicialButton)
        
        
        fraseDeFeedbackView.backgroundColor = .systemPurple
        fraseDeFeedbackView.layer.cornerRadius = 35
        
        fraseDeFeedbackLabel.text = "Parabéns!"
        fraseDeFeedbackLabel.font = UIFont.systemFont(ofSize: 50)
        fraseDeFeedbackLabel.textColor = .white
        fraseDeFeedbackLabel.textAlignment = .center
        
        logoFeedbackImage.image = UIImage(named: "Ativo 3")
        
        voceTirouLabel.text = "Você tirou"
        voceTirouLabel.font = UIFont.systemFont(ofSize: 50)
        voceTirouLabel.textAlignment = .center
        voceTirouLabel.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        
        notaLabel.text = "10/10"
        notaLabel.textAlignment = .center
        notaLabel.font = UIFont.systemFont(ofSize: 50)
        notaLabel.textColor = UIColor(red: 0.204, green: 0.78, blue: 0.349, alpha: 1)
        
        
        telaInicialButton.setTitle("Refazer", for: .normal)
        telaInicialButton.layer.cornerRadius = 35
        telaInicialButton.backgroundColor = .systemPurple
        telaInicialButton.tag = 1
        telaInicialButton.addTarget(self, action: #selector(telaInicial(_:)), for: .touchUpInside)
        
        
        fraseDeFeedbackView.translatesAutoresizingMaskIntoConstraints = false
        fraseDeFeedbackLabel.translatesAutoresizingMaskIntoConstraints = false
        logoFeedbackImage.translatesAutoresizingMaskIntoConstraints = false
        voceTirouLabel.translatesAutoresizingMaskIntoConstraints = false
        notaLabel.translatesAutoresizingMaskIntoConstraints = false
        telaInicialButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            
            fraseDeFeedbackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            fraseDeFeedbackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fraseDeFeedbackView.widthAnchor.constraint(equalToConstant: 269),
            fraseDeFeedbackView.heightAnchor.constraint(equalToConstant: 70),
            
            fraseDeFeedbackLabel.centerXAnchor.constraint(equalTo: fraseDeFeedbackView.centerXAnchor),
            fraseDeFeedbackLabel.centerYAnchor.constraint(equalTo: fraseDeFeedbackView.centerYAnchor),
            fraseDeFeedbackLabel.widthAnchor.constraint(equalToConstant: 229),
            fraseDeFeedbackLabel.heightAnchor.constraint(equalToConstant: 50),
            
            logoFeedbackImage.topAnchor.constraint(equalTo: fraseDeFeedbackView.bottomAnchor,constant: 50),
            logoFeedbackImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoFeedbackImage.heightAnchor.constraint(equalToConstant: 180),
            logoFeedbackImage.widthAnchor.constraint(equalToConstant: 180),
            
            voceTirouLabel.topAnchor.constraint(equalTo: logoFeedbackImage.bottomAnchor, constant: 50),
            voceTirouLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            voceTirouLabel.widthAnchor.constraint(equalToConstant: 226),
            voceTirouLabel.heightAnchor.constraint(equalToConstant: 50),
            
            notaLabel.topAnchor.constraint(equalTo: voceTirouLabel.bottomAnchor, constant: 40),
            notaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            notaLabel.widthAnchor.constraint(equalToConstant: 130),
            notaLabel.heightAnchor.constraint(equalToConstant: 50),
            
            telaInicialButton.topAnchor.constraint(equalTo: notaLabel.bottomAnchor , constant: 125),
            telaInicialButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            telaInicialButton.widthAnchor.constraint(equalToConstant: 269),
            telaInicialButton.heightAnchor.constraint(equalToConstant: 70)
            
        
        
        ])
        
        
    }
    @objc func telaInicial(_ sender: UIButton){
        while sender.tag < 10{
            sender.tag += 1
            print(sender.tag)
        }
        
    }
}
