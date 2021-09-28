//
//  Jornalista.swift
//  desafio_gitflow
//
//  Created by sara.batista.d.felix on 26/09/21.
//

import UIKit

class Jornalismo: Profissao {

    let comissaoNoticia: Double
    
    init(descricao: String, pessoas: [Pessoa], comissaoNoticia: Double) {
        self.comissaoNoticia = comissaoNoticia
        super.init(descricao: descricao, pessoas: pessoas)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        if valorHora >= 44 {
            return valorHora * quantidadeHoras + comissaoNoticia
        } else {
            return valorHora * quantidadeHoras
        }
    }
}
