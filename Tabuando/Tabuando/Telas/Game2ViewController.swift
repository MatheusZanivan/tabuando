//
//  Game2ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 02/05/22.
//

import UIKit

class Game2ViewController: UIViewController {

    //mudar tudo na tela por essas saídas
    @IBOutlet weak var tituloTabuada: UILabel!
    
    @IBOutlet weak var multiplicando: UILabel!
    @IBOutlet weak var multiplicador: UILabel!
    @IBOutlet weak var produto: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var biscoitao: UIImageView!
    
    
    // Esse numero vai vir do clique do botao da listagem
    var numeroDaLista = 1

    // Lidar com a tabuada corrente
    var listaDeTabuadas: [Tabuada2] = []
    var tabuada2: Tabuada2!
    var questionNumber = 0
    

    //bloco a ser carregado assim que a tela for inicializada
    override func viewDidLoad() {
        super.viewDidLoad()

        // inicializar objetos de tabuadas
        listaDeTabuadas = listaTabuadasTelaInicial()
        tabuada2 = listaDeTabuadas[questionNumber]
        view.sendSubviewToBack(biscoitao)

        updateUI()
    }


    //bloco acionado sempre que um dos botoes de resposta for acionado
    @IBAction func answerTrueButton(_ sender: UIButton) {
        submitAnswer(userAnswer: "True", sender: sender)
    }
    
    
    @IBAction func answerFalseButton(_ sender: UIButton) {
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
        tituloTabuada.text = "\(tabuada2.fase)"
        multiplicando.text = "\(tabuada2.multiplicando)"
        multiplicador.text = "\(tabuada2.multiplicador)"
        produto.text = "\(tabuada2.produto)"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
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
