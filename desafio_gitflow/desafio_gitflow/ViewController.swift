//
//  ViewController.swift
//  desafio_gitflow
//
//  Created by sara.batista.d.felix on 24/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pessoa1Label: UILabel!
    @IBOutlet weak var pessoa2Label: UILabel!
    
    @IBOutlet weak var profissao1Label: UILabel!
    @IBOutlet weak var profissao2Label: UILabel!
    
    @IBOutlet weak var salario1Label: UILabel!
    @IBOutlet weak var salario2Label: UILabel!
    
    var profissoes : [Profissao] = []
    
    let service = Service()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sortearButtonAction(_ sender: Any) {
        let profissao1 = service.sortearProfissao()
        var profissao2 = service.sortearProfissao()
        
        while profissao1.descricao == profissao2.descricao {
            profissao2 = service.sortearProfissao()
        }
        
        setupLabelsProfissao1(profissao: profissao1)
        setupLabelsProfissao2(profissao: profissao2)
    }
    
    
    private func setupLabelsProfissao1(profissao: Profissao) {
        let profissionalAleatorio = profissao.getProfissionalAleatorio()
        
        self.pessoa1Label.text = profissionalAleatorio.nome
        self.profissao1Label.text = profissao.descricao
        self.salario1Label.text = "\(profissao.calculaSalario(valorHora: 100, quantidadeHoras: 220))"
    }
    
    private func setupLabelsProfissao2(profissao: Profissao) {
        let profissionalAleatorio = profissao.getProfissionalAleatorio()
        
        self.pessoa2Label.text = profissionalAleatorio.nome
        self.profissao2Label.text = profissao.descricao
        self.salario2Label.text = "\(profissao.calculaSalario(valorHora: 90, quantidadeHoras: 220))"
    }
}

