//
//  Game2ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 02/05/22.
//

import UIKit

class Game2ViewController: UIViewController {

    //mudar tudo na tela por essas saídas
    private weak var tituloTabuada: UILabel?
    private weak var multiplicando: UILabel?
    private weak var multiplicador: UILabel?
    private weak var produto: UILabel?
    private weak var trueButton: UIButton?
    private weak var falseButton: UIButton?
    private weak var biscoitao: UIImageView?
    private weak var faseImage : UIImageView?
    private weak var xEBarra : UIImageView?
    
    
    // Esse numero vai vir do clique do botao da listagem
    var numeroDaLista : Int?
    // Lidar com a tabuada corrente
    var listaDeTabuadas: [Tabuada2] = []
    var tabuada2: Tabuada2!
    var questionNumber = 0
    var score = 0
    
    //bloco a ser carregado assim que a tela for inicializada
    override func viewDidLoad() {
        super.viewDidLoad()

        let tituloTabuada = UILabel()
        let multiplicando = UILabel()
        let multiplicador = UILabel()
        let produto = UILabel()
        let trueButton = UIButton()
        let falseButton = UIButton()
        let biscoitao = UIImageView()
        let faseImage = UIImageView()
        let xEBarra = UIImageView()
        
        view.addSubview(faseImage)
        view.addSubview(tituloTabuada)
        
        view.addSubview(biscoitao)
        view.addSubview(xEBarra)
        view.addSubview(multiplicando)
        view.addSubview(multiplicador)
        view.addSubview(produto)
        
        view.addSubview(trueButton)
        view.addSubview(falseButton)
       
        
        faseImage.image = UIImage(named: "Ativo 15")
//        trueButton.setImage(UIImage(named: "Certo"), for: .normal)
        trueButton.addTarget(self, action: #selector(trueClicado(_:)), for: .touchUpInside)
//        falseButton.setImage(UIImage(named: "Errado"), for: .normal)
        falseButton.addTarget(self, action: #selector(falseClicado(_:)), for: .touchUpInside)
        view.sendSubviewToBack(biscoitao)

        faseImage.translatesAutoresizingMaskIntoConstraints = false
        tituloTabuada.translatesAutoresizingMaskIntoConstraints = false
        multiplicador.translatesAutoresizingMaskIntoConstraints = false
        multiplicando.translatesAutoresizingMaskIntoConstraints = false
        produto.translatesAutoresizingMaskIntoConstraints = false
        trueButton.translatesAutoresizingMaskIntoConstraints = false
        falseButton.translatesAutoresizingMaskIntoConstraints = false
        biscoitao.translatesAutoresizingMaskIntoConstraints = false
        xEBarra.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            faseImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            faseImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            faseImage.heightAnchor.constraint(equalToConstant: 100),
            faseImage.widthAnchor.constraint(equalToConstant: 110),
            
            tituloTabuada.centerYAnchor.constraint(equalTo: faseImage.centerYAnchor),
            tituloTabuada.centerXAnchor.constraint(equalTo: faseImage.centerXAnchor),
            
//            --------------------------------_-__-_-__-_-_-_--_-----__-_--_-_--_--_-_-__-_---_-_--_-_
            biscoitao.topAnchor.constraint(equalTo: faseImage.bottomAnchor, constant: 5),
            biscoitao.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            biscoitao.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            biscoitao.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            xEBarra.topAnchor.constraint(equalTo: biscoitao.topAnchor, constant: 185),
            xEBarra.bottomAnchor.constraint(equalTo: biscoitao.bottomAnchor, constant: 185),
            xEBarra.centerXAnchor.constraint(equalTo: biscoitao.centerXAnchor),
            
            multiplicando.topAnchor.constraint(equalTo: biscoitao.topAnchor, constant: 110),
            multiplicando.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            multiplicando.widthAnchor.constraint(equalToConstant: 25),
            multiplicando.heightAnchor.constraint(equalToConstant: 35),
            
            multiplicador.topAnchor.constraint(equalTo: multiplicando.bottomAnchor, constant: 60),
            multiplicador.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            multiplicador.widthAnchor.constraint(equalToConstant: 25),
            multiplicador.heightAnchor.constraint(equalToConstant: 35),
            
            produto.topAnchor.constraint(equalTo: xEBarra.bottomAnchor, constant: 35),
            produto.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            produto.widthAnchor.constraint(equalToConstant: 25),
            produto.heightAnchor.constraint(equalToConstant: 35),
            
            
            trueButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 55),
            trueButton.topAnchor.constraint(equalTo: biscoitao.bottomAnchor, constant: 55),
            
            falseButton.leftAnchor.constraint(equalTo: trueButton.rightAnchor, constant: 45),
            falseButton.centerYAnchor.constraint(equalTo: trueButton.centerYAnchor)
        
        ])

        self.faseImage = faseImage
        self.tituloTabuada = tituloTabuada
        self.biscoitao = biscoitao
        self.xEBarra = xEBarra
        self.multiplicando = multiplicando
        self.multiplicador = multiplicador
        self.produto = produto
        self.trueButton = trueButton
        self.falseButton = falseButton
        // inicializar objetos de tabuadas
        listaDeTabuadas = listaTabuadasTelaInicial()
        tabuada2 = listaDeTabuadas[questionNumber]
        updateUI()
    }


    //bloco acionado sempre que um dos botoes de resposta for acionado
    //fç chamando outra fç
    @objc func trueClicado(_ sender: UIButton) {
        submitAnswer(userAnswer: "True", sender: sender)
    }
    
    @objc func falseClicado(_ sender: UIButton) {
        submitAnswer(userAnswer: "False", sender: sender)
    }
    
    func submitAnswer(userAnswer: String, sender: UIButton){
        let actualAnswer = listaDeTabuadas[questionNumber].answer
        
//        print(userAnswer)
//        print(actualAnswer)
        
        if (userAnswer == actualAnswer) {
            score += 1
//            print("Correct!")
            sender.backgroundColor = UIColor.green
        } else {
//            print("Wrong!")
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < listaDeTabuadas.count{
            questionNumber += 1
            tabuada2 = listaDeTabuadas[questionNumber]
        } else {
            terminarTeste()
            return
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    //chamando a tela de score
    func terminarTeste() {
        guard let feedbackScreen = storyboard?.instantiateViewController(withIdentifier: "feedbackcontroller") as? feedbackViewController else { return }
        feedbackScreen.score = self.score
        feedbackScreen.modalPresentationStyle = .fullScreen
        feedbackScreen.voltarTelaInicial = {
            self.navigationController?.popToRootViewController(animated: false)
        }
        
        present(feedbackScreen, animated: true)
    }
    
    
    @objc func updateUI(){
        print("Updating UI...")
//        self.view.backgroundColor = UIColor.red
        tituloTabuada?.text = "\(tabuada2.fase)"
        multiplicando?.text = "\(tabuada2.multiplicando)"
        multiplicador?.text = "\(tabuada2.multiplicador)"
        produto?.text = "\(tabuada2.produto)"
        trueButton?.backgroundColor = UIColor.clear
        falseButton?.backgroundColor = UIColor.clear
    }

    
    //*** revisar cases por causa do desafio ***
    func listaTabuadasTelaInicial() -> [Tabuada2]{
        switch(numeroDaLista){
            case 2: return Game2.quizDois;
            case 4: return Game2.quizQuatro;
            case 6: return Game2.quizSeis;
            case 8: return Game2.quizOito;
            default: return Game2.quizOito;
        }
    }
    

}
