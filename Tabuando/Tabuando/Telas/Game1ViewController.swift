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
    
    // Esse numero vai vir do clique do botao da listagem
    var numeroDaLista : Int?
    
    // Lidar com a tabuada corrente
    var listaDeTabuadas: [Tabuada] = []
    var tabuada: Tabuada!
    var questionNumber = 0
    var score = 0
    var recebeNumero = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // inicializar objetos de tabuadas
        listaDeTabuadas = pegarListaDeTabuadas()
        tabuada = listaDeTabuadas[questionNumber]
        
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
        
        if (numeroDaLista == 8) {
            faseImage.image = UIImage(named: "TopDesafio")
        }else{
            faseImage.image = UIImage(named: "Ativo 15")
        }
        
        faseLabel.font = UIFont.systemFont(ofSize: 26)
        faseLabel.textColor = .white
        
        desafioView.backgroundColor = .systemYellow
        desafioView.layer.cornerRadius = 20
        desafioLabel.textAlignment = .center
        desafioLabel.font = UIFont.systemFont(ofSize: 50)
        desafioLabel.textColor = .white
        
        igualLabel.text = "="
        igualLabel.textColor = .white
        igualLabel.font = UIFont.systemFont(ofSize: 50)
        
        resultadoView.backgroundColor = .systemPurple
        resultadoView.layer.cornerRadius = 27
        
        resposta1Button.backgroundColor = .systemPurple
        resposta1Button.layer.cornerRadius = 27
        resposta1Button.tag = 1
        resposta1Button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        resposta1Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        resposta2Button.backgroundColor = .systemPurple
        resposta2Button.layer.cornerRadius = 27
        resposta2Button.tag = 2
        resposta2Button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        resposta2Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        resposta3Button.backgroundColor = .systemPurple
        resposta3Button.layer.cornerRadius = 27
        resposta3Button.tag = 3
        resposta3Button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        resposta3Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        resposta4Button.backgroundColor = .systemPurple
        resposta4Button.layer.cornerRadius = 27
        resposta4Button.tag = 4
        resposta4Button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        resposta4Button.addTarget(self, action: #selector(resposta(_:)), for: .touchUpInside)
        
        faseImage.translatesAutoresizingMaskIntoConstraints = false
        faseLabel.translatesAutoresizingMaskIntoConstraints = false
        desafioView.translatesAutoresizingMaskIntoConstraints = false
        desafioLabel.translatesAutoresizingMaskIntoConstraints = false
        igualLabel.translatesAutoresizingMaskIntoConstraints = false
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
            
            desafioLabel.widthAnchor.constraint(equalToConstant: 140),  //ACERTAR NO 1 X 10
            desafioLabel.heightAnchor.constraint(equalToConstant: 40),
            desafioLabel.leftAnchor.constraint(equalTo: desafioView.leftAnchor, constant: 0),
            desafioLabel.centerYAnchor.constraint(equalTo: desafioView.centerYAnchor),
            
            igualLabel.centerYAnchor.constraint(equalTo: desafioLabel.centerYAnchor),
            igualLabel.leftAnchor.constraint(equalTo: desafioLabel.rightAnchor),
            
            resultadoView.widthAnchor.constraint(equalToConstant: 72),
            resultadoView.heightAnchor.constraint(equalToConstant: 72),
//            resultadoView.topAnchor.constraint(equalTo: desafioView.topAnchor, constant: 9),
            resultadoView.centerYAnchor.constraint(equalTo: desafioView.centerYAnchor),
            resultadoView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 255),
            
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
        
        updateUI()
    }
    
    @objc func updateUI() {
        faseLabel!.text = "\(tabuada.fase)"
        desafioLabel!.text = "\(tabuada.multiplicando) x \(tabuada.multiplicador) "
        resposta1Button!.setTitle("\(tabuada.resposta1)", for: .normal)  //outlet do botao
        resposta2Button!.setTitle("\(tabuada.resposta2)", for: .normal)
        resposta3Button!.setTitle("\(tabuada.resposta3)", for: .normal)
        resposta4Button!.setTitle("\(tabuada.resposta4)", for: .normal)
    }

    @objc func resposta(_ sender: UIButton){
        
//        print("question number: \(self.questionNumber) / \(self.listaDeTabuadas.count)")
        
        if(sender.currentTitle == "\(tabuada.produto)"){
            score += 1
            sender.backgroundColor = UIColor.systemGreen
        } else {
            sender.backgroundColor = UIColor.systemRed
        }
        
        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { [self]_ in
            sender.backgroundColor = .systemPurple
            
            if questionNumber + 1 < listaDeTabuadas.count{
                passarParaProximaPergunta()
            } else {
                terminarTeste()
//                ViewController().save()
            }
        }
    }
    
    func passarParaProximaPergunta() {
        questionNumber += 1
        tabuada = listaDeTabuadas[questionNumber]
        updateUI()
    }
    
    func terminarTeste() {
        guard let feedbackScreen = storyboard?.instantiateViewController(withIdentifier: "feedbackcontroller") as? feedbackViewController else { return }
        feedbackScreen.score = self.score
//        main.score = self.score
        if(numeroDaLista == 1){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 2")}
            Score().createScore(fase: 1, pontuacao: self.score)
        }
        else if(numeroDaLista == 3){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 4")}
            Score().createScore(fase: 3, pontuacao: self.score)
        }
        else if(numeroDaLista ==  6){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 7")}
            Score().createScore(fase: 6, pontuacao: self.score)
        }
        else if(numeroDaLista == 8){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 9")}
            Score().createScore(fase: 8, pontuacao: self.score)
        }
        else if(numeroDaLista == 9){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 10")}
            Score().createScore(fase: 9, pontuacao: self.score)
        }
        else if(numeroDaLista == 11){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 12")}
            Score().createScore(fase: 11, pontuacao: self.score)
        }
        
        
        feedbackScreen.modalPresentationStyle = .fullScreen
        feedbackScreen.voltarTelaInicial = {
            self.navigationController?.popToRootViewController(animated: false)
        }
        
        present(feedbackScreen, animated: true)
        
    }
    
    
    //*** revisar cases por causa do desafio ***
    func pegarListaDeTabuadas() -> [Tabuada]{
        switch(numeroDaLista){
            case 1: return Desafios.tabuadaDoUm;
//            case 2: return Desafios.tabuadaDoDois;
            case 3: return Desafios.tabuadaDoTres;
//            case 4: return Desafios.tabuadaDoQuatro;
            case 6: return Desafios.tabuadaDoCinco;
//            case 6: return Desafios.tabuadaDoSeis;
            case 9: return Desafios.tabuadaDoSete;
//            case 8: return Desafios.tabuadaDoOito;
            case 8: return Desafios.tabuadaDoDesafio2;
            default: return Desafios.tabuadaDoNove;
        }
    }
}
