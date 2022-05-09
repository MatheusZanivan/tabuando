//
//  Game2ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 02/05/22.
//

import UIKit

class Game2ViewController: UIViewController {

    //mudar tudo na tela por essas saídas
    private weak var faseImage : UIImageView?
    private weak var tituloTabuada: UILabel?
    private weak var biscoitao: UIImageView?
    private weak var multiplicando: UILabel?
    private weak var multiplicador: UILabel?
    private weak var produto: UILabel?
    private weak var xEBarra : UIImageView?
    private weak var trueButton: UIButton?
    private weak var falseButton: UIButton?
    
    
    // Esse numero vai vir do clique do botao da listagem
    var numeroDaLista = 1
    // Lidar com a tabuada corrente
    var listaDeTabuadas: [Tabuada2] = []
    var tabuada2: Tabuada2!
    var questionNumber = 0
    
    //bloco a ser carregado assim que a tela for inicializada
    override func viewDidLoad() {
        super.viewDidLoad()

        let faseImage = UIImageView()
        let tituloTabuada = UILabel()
        let biscoitao = UIImageView()
        let xEBarra = UIImageView()
        let multiplicando = UILabel()
        let multiplicador = UILabel()
        let produto = UILabel()
        let trueButton = UIButton()
        let falseButton = UIButton()
        
        self.view.addSubview(faseImage)
        faseImage.addSubview(tituloTabuada)
        self.view.addSubview(biscoitao)
        biscoitao.addSubview(multiplicador)
        biscoitao.addSubview(multiplicando)
        biscoitao.addSubview(xEBarra)
        biscoitao.addSubview(produto)
        view.addSubview(trueButton)
        view.addSubview(falseButton)
       
        faseImage.image = UIImage(named: "Ativo 15")

        biscoitao.image = UIImage(named: "Ativo 1")
        view.sendSubviewToBack(biscoitao)
        
        multiplicador.textColor = .white
        
        multiplicando.textColor = .white
        
//        trueButton.setImage(UIImage(named: "Certo"), for: .normal)
//        trueButton.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
//
//        falseButton.setImage(UIImage(named: "Errado"), for: .normal)
//        falseButton.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
//
//        produto.textColor = .white
//
        xEBarra.image = UIImage(named: "xEBarra")
        
        tituloTabuada.translatesAutoresizingMaskIntoConstraints = false
        multiplicador.translatesAutoresizingMaskIntoConstraints = false
        multiplicando.translatesAutoresizingMaskIntoConstraints = false
        produto.translatesAutoresizingMaskIntoConstraints = false
        trueButton.translatesAutoresizingMaskIntoConstraints = false
        falseButton.translatesAutoresizingMaskIntoConstraints = false
        biscoitao.translatesAutoresizingMaskIntoConstraints = false
        xEBarra.translatesAutoresizingMaskIntoConstraints = false
        faseImage.translatesAutoresizingMaskIntoConstraints = false
        
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
            biscoitao.heightAnchor.constraint(equalToConstant: 447),
            biscoitao.widthAnchor.constraint(equalToConstant: 359),
            
            multiplicando.topAnchor.constraint(equalTo: biscoitao.topAnchor, constant: 111),
            multiplicando.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            
            multiplicador.topAnchor.constraint(equalTo: biscoitao.topAnchor, constant: 191),
            multiplicador.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            
            xEBarra.bottomAnchor.constraint(equalTo: biscoitao.topAnchor,constant: 260),
            xEBarra.centerXAnchor.constraint(equalTo: biscoitao.centerXAnchor),
            xEBarra.widthAnchor.constraint(equalToConstant: 220),
            xEBarra.heightAnchor.constraint(equalToConstant: 70),
            
            produto.topAnchor.constraint(equalTo: biscoitao.topAnchor, constant: 292),
            produto.rightAnchor.constraint(equalTo: biscoitao.rightAnchor, constant: 125),
            
            
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
    @objc func resposta(_ sender: UIButton) {
        submitAnswer(userAnswer: "True", sender: sender)
        submitAnswer(userAnswer: "False", sender: sender)
    }
    
    func submitAnswer(userAnswer: String, sender: UIButton){
        let actualAnswer = listaDeTabuadas[questionNumber].answer
        
        //print(userAnswer)
        print(actualAnswer)
        
        if (userAnswer == actualAnswer) {
            print("Correct!")
            sender.backgroundColor = UIColor.green
        } else {
            print("Wrong!")
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
    
    
    
    func terminarTeste() {
        // TODO: chamar a tela de score
    }
    
    
    @objc func updateUI(){
        print("Updating UI...")
        tituloTabuada?.text = "\(tabuada2.fase)"
        multiplicando?.text = "\(tabuada2.multiplicando)"
        multiplicador?.text = "\(tabuada2.multiplicador)"
        produto?.text = "\(tabuada2.produto)"
////        trueButton.backgroundColor = UIColor.clear
////        falseButton.backgroundColor = UIColor.clear
    }

    
    //*** revisar cases por causa do desafio ***
    func listaTabuadasTelaInicial() -> [Tabuada2]{
        switch(numeroDaLista){
            case 1: return Game2.quizDois;
            case 2: return Game2.quizDois;
            case 3: return Game2.quizDois;
            case 4: return Game2.quizDois;
            default: return Game2.quizDois;
        }
    }
    

}
