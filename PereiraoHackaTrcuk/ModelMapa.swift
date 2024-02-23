//
//  ModelMapa.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import Foundation

class ModelMapa : ObservableObject{
    
    @Published var arrayLocais : [bancodinheirodados2] = []
    
    func Fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/lerBancoTesteDinheiro2") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode([bancodinheirodados2].self, from: data)
                
                DispatchQueue.main.async{
                    self?.arrayLocais = jsonDecodificado
                }
            } catch{
                print(error)
            }
            
        }
        task.resume()
    }

}
