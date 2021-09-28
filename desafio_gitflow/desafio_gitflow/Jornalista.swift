//
//  Jornalista.swift
//  desafio_gitflow
//
//  Created by sara.batista.d.felix on 26/09/21.
//

import UIKit

let comissaoNoticia: Double = 750.00

class Jornalista: Profissao {
    
    var pessoas : [Pessoa]
    
    init(descricao: String, pessoas: [Pessoa]) {
        self.pessoas = pessoas
        super.init(descricao: descricao)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        if valorHora >= 44 {
            return valorHora * quantidadeHoras + comissaoNoticia
        } else {
            return valorHora * quantidadeHoras
        }
        
        return 0.0
    }
}
