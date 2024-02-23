import SwiftUI

struct ContentView: View {
    @State private var search = ""
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100.0, height: 100.0)
                                .padding(.leading, 30.0)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Olá, Guilherme!")
                            
                            ZStack{
                                Circle()
                                    .foregroundColor(Color("roxo"))
                                    .frame(width: 60, height: 80)
                                
                                Circle()
                                    .foregroundColor(Color("cinzaclaro"))
                                    .frame(width: 50, height: 80)
                                Image(systemName: "person").frame(width: 40.0, height: 40.0).foregroundColor(Color("roxo"))
                            }
                        }
                        .padding(.horizontal, 29.0)
                    }
                    
                    VStack {
                        HStack{
                            Image(systemName: "magnifyingglass").padding()
                                .font(.system(size: 20))
                            
                            
                            TextField("O que você procura?", text: $search)
                                .padding()
                            
                            
                        }.background(Color("cinzaescuro"))
                            .cornerRadius(10)
                            .padding(.horizontal, 50.0)
                    }
                    
                    VStack{
                        ZStack{
                            Rectangle().foregroundColor(Color("cinzaescuro")).frame(height: 226.0)
                            
                            VStack{
                                Text("Categorias")
                                    .foregroundColor(Color("roxo"))
                                    .font(.custom("Poppins-Bold", size: 36))
                                    .padding(-22.0)
                                    .padding(.top, 25.0)
                                    .padding(.bottom, -17.0)
                                
                                
                                
                                HStack (spacing: -45.0){
                                    HStack{
                                        NavigationLink(destination: CategoriasView(categoria_escolhida: "Assistência Técnica")){
                                            
                                            ZStack{
                                           
                                                Rectangle().foregroundColor(Color("cinzaescuro"))
                                                    .frame(width: 111.0, height: 111.0)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                                    .padding(30.0)
                                                    .padding(.top, -9.0)
                                                Image("ferramentas").padding(.top, -3.0)
                                                VStack{
                                                    VStack{
                                                        Text("Assistência").foregroundColor(Color("preto"))
                                                            .font(.custom("Poppins-Regular", size: 15))
                                                        
                                                        Text("Técnica")
                                                            .foregroundColor(Color("preto"))
                                                            .font(.custom("Poppins-Regular", size: 15))
                                                    }.padding(.top, 160.0)
                                                }
                                                
                                            }
                                            
                                        }
                                      
                                    }
                                    HStack{
                                        NavigationLink(destination: CategoriasView(categoria_escolhida: "Pintura")){
                                            ZStack{
                                                Rectangle().foregroundColor(Color("cinzaescuro"))
                                                    .frame(width: 111.0, height: 111.0)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                                    .padding(30.0)
                                                    .padding(.top, -9.0)
                                                Image("rolo").padding(.top, -3.0)
                                                VStack{
                                                    VStack{
                                                        Text("Pintura").foregroundColor(Color("preto"))
                                                            .font(.custom("Poppins-Regular", size: 15))
                                                        
                                                    }.padding(.top, 160.0)
                                                }
                                                
                                            }
                                            
                                        }

                                  }
                                    HStack{
                                        NavigationLink(destination: CategoriasView(categoria_escolhida: "Construção")){
                                            ZStack{
                                            
                                                Rectangle().foregroundColor(Color("cinzaescuro"))
                                                    .frame(width: 111.0, height: 111.0)
                                                    .cornerRadius(20)
                                                    .shadow(radius: 5)
                                                    .padding(30.0)
                                                    .padding(.top, -9.0)
                                                Image("muro").padding(.top, -3.0)
                                                VStack{
                                                    VStack{
                                                        Text("Construção").foregroundColor(Color("preto"))
                                                            .font(.custom("Poppins-Regular", size: 15))
                                                        
                                                    }.padding(.top, 160.0)
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                }
                                
                            }
                        }
                    }.padding(.vertical)
                    
                    VStack{
                        Text("Freelas disponíveis")
                            .foregroundColor(Color("roxo"))
                            .font(.custom("Poppins-Bold", size: 36))
                    }.padding(.bottom, 21.0)
                    
                    
                    
                    VStack{
                        ForEach(searchResults, id: \.self){ index in
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("roxo"))
                                    .cornerRadius(20) // ajuste conforme necessário
                                    .padding(.vertical, -20)
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 353.0, height: 184.0)
                                            .cornerRadius(37)
                                            .foregroundColor(Color("cinzaclaro"))
                                        
                                        VStack {
                                            Text(index.categoria_servico!)
                                                .font(.custom("Poppins", size: 20))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("preto"))
                                            
                                            HStack {
                                            Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)

                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)

                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)

                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)

                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                            }
                                            
                                            HStack {
                                                ZStack{
                                                    Circle()
                                                    .frame(width: 80.0, height: 80.0).foregroundColor(Color("roxo"))
                                                    
                                                    AsyncImage(url: URL(string: index.img!)){
                                                        image in image.resizable()
                                                            .scaledToFill()
                                                            .frame(width: 70.0, height: 70.0)
                                                            .cornerRadius(10)
                                                            .clipShape(Circle())
                                                        
                                                    }placeholder: {
                                                        ProgressView()
                                                    }
                                                }
//

                                                VStack(alignment: .leading, spacing: 5) {
                                                    Text(index.nome!)
                                                        .font(.custom("Poppins", size: 15))
                                                        .fontWeight(.bold)

                                                    Text(index.descricao_categoria!)
                                                        .font(.custom("Poppins", size: 10))
                                                        .foregroundColor(Color("preto"))
                                                        
                                                }

                                                Spacer()
                                            }.padding(.horizontal, 42.0)
                                            ZStack{
                                                Rectangle()
                                                    .foregroundColor(Color("roxo"))
                                                    .frame(width: 153.0, height: 30.0)
                                                    .cornerRadius(15)
                                                NavigationLink(destination: PerfilView(perfil: index)){
                                                    Text("Contratar")
                                                        .foregroundColor(Color("cinzaclaro"))
                                                }
                                                
                                                
                                            }
                                        }
                                        
                                        
                                    }
                                    
                                }.padding()
                                
                            }
                        }//final Vstacks
                        
                    }//Usuarios
                    
                    
                }
            } // Final ScrollView
            
            
        }.accentColor(.white) // Final NavigationStack
        .onAppear(){
        viewModel.BaixarDados(query: search)
    
    }
    }
    
    var searchResults: [dados] {
          if search.isEmpty {
              return viewModel.chars
          } else {
              let searchKeywords = search.lowercased().split(separator: " ").map { String($0) }
              return viewModel.chars.filter { usuario in
                  guard let descricao = usuario.categoria_servico?.lowercased() else { return false }
                  return searchKeywords.allSatisfy { descricao.contains($0) }
              }
          }
      }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
