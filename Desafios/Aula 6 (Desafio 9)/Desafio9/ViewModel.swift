//
//  ViewModel.swift
//  Desafio9
//
//  Created by Turma01-18 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var personagens: [HarryP] = []
//    @Published var house: [HarryP] = [HarryP(name: "", species: "", gender: "", house: "", wizard: true, dateOfBirth: "", yearOfBirth: 2004, patronus: "", image: "")]
//    
    func fetch(){
        
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters") else {
            return
        }
        
        //weak self -> preciso buscar essa url e preciso criar tarefa de realcao fraca pq se isso quebrar, ela nao vai quebrar a aplicacao; se tiver qualquer problema, so retorna
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            //tentando decodificar o arquivo json de acordo a data(acima), feito isso, ela despacha pra fila de processamento assincrono do swift
            //pego a decodificacao de parsed e atribuo p personagens (autoreferenciando com self)
            do {
                let parsed = try JSONDecoder().decode([HarryP].self, from: data)
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    func fetchCasa(house : String){
        
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/\(house)") else {
            return
        }
        
        //weak self -> preciso buscar essa url e preciso criar tarefa de realcao fraca pq se isso quebrar, ela nao vai quebrar a aplicacao; se tiver qualquer problema, so retorna
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            //tentando decodificar o arquivo json de acordo a data(acima), feito isso, ela despacha pra fila de processamento assincrono do swift
            //pego a decodificacao de parsed e atribuo p personagens (autoreferenciando com self)
            do {
                let parsed = try JSONDecoder().decode([HarryP].self, from: data)
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    
}
