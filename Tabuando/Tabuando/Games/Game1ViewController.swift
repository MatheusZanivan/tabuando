//
//  Game1ViewController.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 19/04/22.
//

import UIKit

class Game1ViewController: UIViewController {

    var tabuada = Desafios.tabuadaDoUm[Int.random(in: 0...9)]
    
    @IBOutlet weak var pergunta: UILabel!
    @IBOutlet weak var resposta: UILabel!
    
    @IBOutlet weak var resposta1: UIButton!
    @IBOutlet weak var resposta2: UIButton!
    @IBOutlet weak var resposta3: UIButton!
    @IBOutlet weak var resposta4: UIButton!
    
    
    @IBAction func submitResposta1(_ sender: UIButton) {
        
    }
    
    @IBAction func submitResposta2(_ sender: UIButton) {
        
    }
    
    @IBAction func submitResposta3(_ sender: UIButton) {
        
    }
    
    @IBAction func submitResposta4(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pergunta.text = "\(tabuada.multiplicando) x \(tabuada.multiplicador) ="
        resposta1.setTitle("\(tabuada.resposta)", for: .normal)
        resposta2.setTitle("\(tabuada.respostaErrada1)", for: .normal)
        resposta3.setTitle("\(tabuada.respostaErrada2)", for: .normal)
        resposta4.setTitle("\(tabuada.respostaErrada3)", for: .normal)
        
    }
    
    func acertos(){
        
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
