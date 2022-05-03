//
//  Game1ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 19/04/22.
//

import UIKit

class Game1ViewController: UIViewController {
    
    // Esse numero vai vir do clique do botao da listagem
    var numeroDaLista = 1
    
    // Esse é o índice da lista de tabuadas randomizada
    var questionNumber = -1;
    
    // Ela vai ser randomizada 1x e ser salva logo em seguida
    lazy var listaDeTabuadas : [Tabuada] = { pegarListaDeTabuadas().shuffled()
    }()
    
    // Esse número vai ser descartado,
    // só está aqui para inicializar a variável.
    // NÃO LIGA PRO TABUADA DO UM
    var tabuada = Desafios.tabuadaDoUm[0]
    
    @IBOutlet weak var pergunta: UILabel!
    @IBOutlet weak var resposta: UILabel!
    
    @IBOutlet weak var resposta1: UIButton!
    @IBOutlet weak var resposta2: UIButton!
    @IBOutlet weak var resposta3: UIButton!
    @IBOutlet weak var resposta4: UIButton!
    
    @IBAction func submitResposta1(_ sender: UIButton) {
        let answer = sender.currentTitle!
        
        if(answer == "\(tabuada.produto)"){
            print("Resposta certa!")
        } else {
            print("Resposta errada!")
        }
        
        pegarProximaTabuada()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pegarProximaTabuada()
        updateUI()
    }
    
    
    func pegarProximaTabuada() {
        //print ("Pegando próxima tabuada...")
        questionNumber += 1
        //print("questionNumber: \(questionNumber)")
        tabuada = listaDeTabuadas[questionNumber]
        //print("Tabuada: \(tabuada.multiplicando)x\(tabuada.multiplicador)")
    }
    
    func updateUI() {
        let respostas = [
            "\(tabuada.produto)",
            "\(tabuada.resposta1)",
            "\(tabuada.resposta2)",
            "\(tabuada.resposta3)",
        ].shuffled()
        
        print("Respostas: \(respostas)")
        
        
        pergunta.text = "\(tabuada.multiplicando) x \(tabuada.multiplicador) ="
        resposta1.setTitle(respostas[0], for: .normal)
        resposta2.setTitle(respostas[1], for: .normal)
        resposta3.setTitle(respostas[2], for: .normal)
        resposta4.setTitle(respostas[3], for: .normal)
    }
    
    //*** revisar cases por causa do desafio ***
    func pegarListaDeTabuadas() -> [Tabuada]{
        switch(numeroDaLista){
            case 1: return Desafios.tabuadaDoUm;
            case 2: return Desafios.tabuadaDoDois;
            case 3: return Desafios.tabuadaDoTres;
            case 4: return Desafios.tabuadaDoQuatro;
            case 5: return Desafios.tabuadaDoCinco;
            case 6: return Desafios.tabuadaDoSeis;
            case 7: return Desafios.tabuadaDoSete;
            case 8: return Desafios.tabuadaDoOito;
            default: return Desafios.tabuadaDoNove;
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
