
import Foundation

class ViewModel : ObservableObject {
    @Published var chars : [dados] = []
    
    func BaixarDados(query: String){
        guard let url = URL(string: "http://192.168.128.47:1880/lerBancoTesteDinheiroUm" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([dados].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
