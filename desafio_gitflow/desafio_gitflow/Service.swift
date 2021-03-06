//
//  Service.swift
//  desafio_gitflow
//
//  Created by Henry Bilby on 27/09/21.
//

import Foundation

class Service {
    
    public func sortearProfissao() -> Profissao {
        let profissoes = getProfissoes()
        return profissoes.randomElement()!
    }

    private func getProfissoes() -> [Profissao] {
        let engenharia = getEngenharia()
        let medicina = getMedicina()
        let jornalismo = getJornalismo()
        let farmacia = getFarmacia()
        
        let profissoes = [engenharia, medicina, jornalismo, farmacia]
        
        return profissoes
    }
    
    private func getFarmacia() -> Farmacia {
        let pessoasFarmaceuticas = getPessoasFarmaceuticas()
        return Farmacia(descricao: "Farmacia", pessoas: pessoasFarmaceuticas, pisoSalarial: 3000.00)
    }
    
    private func getPessoasFarmaceuticas() -> [Pessoa] {
        let pessoasFarmaceuticas : [Pessoa] = [Pessoa(nome: "Joao Farmacia"),
                                                  Pessoa(nome: "Maria Farmacia"),
                                                  Pessoa(nome: "José Farmacia"),
                                                  Pessoa(nome: "Marta Farmacia")]
        return pessoasFarmaceuticas
    }
    
    private func getEngenharia() -> Engenharia {
        let pessoasEngenheiras = getPessoasEngenheiras()
        return Engenharia(descricao: "Engenharia", pessoas: pessoasEngenheiras, salarioMinimo: 1100.00)
    }
    
    private func getPessoasEngenheiras() -> [Pessoa] {
        let pessoasEngenheiras : [Pessoa] = [Pessoa(nome: "Joao Engenharia"),
                                                  Pessoa(nome: "Maria Engenharia"),
                                                  Pessoa(nome: "José Engenharia"),
                                                  Pessoa(nome: "Marta Engenharia")]
        return pessoasEngenheiras
    }
    
    private func getMedicina() -> Medicina {
        let pessoasMedicas = getPessoasMedicas()
        return Medicina(descricao: "Medicina", pessoas: pessoasMedicas, bonusMensal: 10000.00)
    }
    
    private func getPessoasMedicas() -> [Pessoa] {
        let pessoasMedicas : [Pessoa] = [Pessoa(nome: "Joao Medicina"),
                                                  Pessoa(nome: "Maria Medicina"),
                                                  Pessoa(nome: "José Medicina"),
                                                  Pessoa(nome: "Marta Medicina")]
        return pessoasMedicas
    }
    
    private func getJornalismo() -> Jornalismo {
        let pessoasJornalistas = getPessoasJornalistas()
        return Jornalismo(descricao: "Jornalismo", pessoas: pessoasJornalistas, comissaoNoticia: 2000.00)
    }
    
    private func getPessoasJornalistas() -> [Pessoa] {
        let pessoasJornalistas : [Pessoa] = [Pessoa(nome: "Joao Jornalismo"),
                                                  Pessoa(nome: "Maria Jornalismo"),
                                                  Pessoa(nome: "José Jornalismo"),
                                                  Pessoa(nome: "Marta Jornalismo")]
        return pessoasJornalistas
    }
}
