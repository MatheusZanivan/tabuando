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
    var numeroDaLista : Int?
    // Lidar com a tabuada corrente
    var listaDeTabuadas: [Tabuada2] = []
    var tabuada2: Tabuada2!
    var questionNumber = 0
    var score = 0
    var recebeNumero = 0
    
    var numeroFoiSorteado = [true,false,false,false,false,false,false,false,false,false]
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
        self.view.addSubview(xEBarra)
        biscoitao.addSubview(produto)
        view.addSubview(trueButton)
        view.addSubview(falseButton)
       
        if (numeroDaLista == 4 || numeroDaLista == 12) {
            faseImage.image = UIImage(named: "TopDesafio")
        }else{
            faseImage.image = UIImage(named: "Ativo 15")
        }
        
        tituloTabuada.font = UIFont.systemFont(ofSize: 26)
        tituloTabuada.textColor = .white

        biscoitao.image = UIImage(named: "Biscoito")
        view.sendSubviewToBack(biscoitao)
        
        multiplicador.textColor = .white
        multiplicador.font = UIFont.systemFont(ofSize: 60)
        
        multiplicando.textColor = .white
        multiplicando.font = UIFont.systemFont(ofSize: 60)
        
        xEBarra.image = UIImage(named: "xEBarra")
        
        produto.textColor = .white
        produto.font = UIFont.systemFont(ofSize: 60)
        
        trueButton.setImage(UIImage(named: "Certo"), for: .normal)
        trueButton.addTarget(self, action: #selector(trueClicado(_:)), for: .touchUpInside)
        
        falseButton.setImage(UIImage(named: "Errado"), for: .normal)
        falseButton.addTarget(self, action: #selector(falseClicado(_:)), for: .touchUpInside)
        
        

        faseImage.translatesAutoresizingMaskIntoConstraints = false
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
            xEBarra.widthAnchor.constraint(equalToConstant: 230),
            xEBarra.heightAnchor.constraint(equalToConstant: 70),
            
            
            multiplicando.topAnchor.constraint(equalTo: biscoitao.topAnchor,constant: 70),
            multiplicando.rightAnchor.constraint(equalTo: biscoitao.leftAnchor, constant: 250),
            
            multiplicador.topAnchor.constraint(equalTo: biscoitao.topAnchor,constant: 170),
            multiplicador.rightAnchor.constraint(equalTo: biscoitao.leftAnchor, constant: 250),
            
            
            produto.topAnchor.constraint(equalTo: xEBarra.bottomAnchor, constant: 10),
            produto.rightAnchor.constraint(equalTo: biscoitao.leftAnchor, constant: 250),
//            produto.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            produto.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
            
            
            trueButton.widthAnchor.constraint(equalToConstant: 110),
            trueButton.heightAnchor.constraint(equalToConstant: 110),
            trueButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            trueButton.topAnchor.constraint(equalTo: biscoitao.bottomAnchor, constant: 20),
            
            falseButton.widthAnchor.constraint(equalToConstant: 110),
            falseButton.heightAnchor.constraint(equalToConstant: 110),
            falseButton.leftAnchor.constraint(equalTo: trueButton.rightAnchor, constant: 70),
            falseButton.centerYAnchor.constraint(equalTo: trueButton.centerYAnchor),
        
            
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
            if (userAnswer == "True"){
                sender.setImage(UIImage(named: "CertoVerde"), for: .normal)
                Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { []_ in
                    sender.setImage(UIImage(named: "Certo"), for: .normal)}
            }
            else{
                sender.setImage(UIImage(named: "ErradoVerde"), for: .normal)
                Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { []_ in
                    sender.setImage(UIImage(named: "Errado"), for: .normal)}
            }
            
        } else {
//            print("Wrong!")
            if (userAnswer == "False"){
                sender.setImage(UIImage(named: "ErradoVermelho"), for: .normal)
                Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { []_ in
                    sender.setImage(UIImage(named: "Errado"), for: .normal)}
            }
            else{
                sender.setImage(UIImage(named: "CertoVermelho"), for: .normal)
                Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { []_ in
                    sender.setImage(UIImage(named: "Certo"), for: .normal)}
            }
        }
        
        if questionNumber + 1 < listaDeTabuadas.count{
            questionNumber += 1
            var saiLoop = false
            
            repeat{
            let numeroSortado = Int.random(in: 0..<10)
            if(numeroFoiSorteado[numeroSortado] == false){
                numeroFoiSorteado[numeroSortado] = true
                tabuada2 = listaDeTabuadas[numeroSortado]
                updateUI()
                saiLoop = true
            }}while(!saiLoop)
        } else {
            terminarTeste()
//            ViewController().save()
            
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    //chamando a tela de score
    func terminarTeste() {
        guard let feedbackScreen = storyboard?.instantiateViewController(withIdentifier: "feedbackcontroller") as? feedbackViewController else { return }
        
        feedbackScreen.score = self.score
//        main.score = self.score
        if(numeroDaLista == 2){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 3")}
            Score().createScore(fase: 2, pontuacao: self.score)
        }
        else if(numeroDaLista == 4){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 5")}
            Score().createScore(fase: 4, pontuacao: self.score)
        }
        else if(numeroDaLista == 5){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 6")}
            Score().createScore(fase: 5, pontuacao: self.score)
        }
        else if(numeroDaLista == 7){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 8")}
            Score().createScore(fase: 7, pontuacao: self.score)
        }
        else if(numeroDaLista == 10){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 11")}
            Score().createScore(fase: 10, pontuacao: self.score)
        }
        else if(numeroDaLista == 12){
            if(self.score > 7){ UserDefaults.standard.setValue(false, forKey: "fase 12")}
            Score().createScore(fase: 12, pontuacao: self.score)
        }
        
        
        
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
        produto!.text = "\(tabuada2.produto)"
        
//        trueButton?.backgroundColor = UIColor.clear
//        falseButton?.backgroundColor = UIColor.clear
    }

    
    //*** revisar cases por causa do desafio ***
    func listaTabuadasTelaInicial() -> [Tabuada2]{
        switch(numeroDaLista){
            case 2: return Game2.quizDois;
            case 5: return Game2.quizQuatro;
            case 7: return Game2.quizSeis;
            case 10: return Game2.quizOito;
            case 4: return Game2.quizDesafio1;
            default: return Game2.quizDesafio3
        }
    }
    
}
