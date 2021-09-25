//
//  ViewController.swift
//  desafio_gitflow
//
//  Created by sara.batista.d.felix on 24/09/21.
//

import UIKit

class ViewController: UIViewController {

    let pessoasEngenheiras : [Pessoa] = [Pessoa(nome: "Joao Engenharia"),
                                         Pessoa(nome: "Maria Engenharia"),
                                         Pessoa(nome: "José Engenharia"),
                                         Pessoa(nome: "Marta Engenharia")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func getPessoaAleatoria(pessoas:[Pessoa]) -> Pessoa {
        guard let pessoaAleatoria = pessoas.randomElement() else {
            let indice = Int(arc4random_uniform(UInt32(pessoas.count)))
            return pessoas[indice]
        }

        return pessoaAleatoria
    }

}

