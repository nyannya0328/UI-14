//
//  ContentView.swift
//  UI-13



//  Created by にゃんにゃん丸 on 2020/10/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            
            Home()
            
                .navigationBarTitle("Girls Collection")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Home :View {
    
    @State var index = 0
    
    var body: some View{
        VStack{
            
            
            TabView(selection:$index){
                
                Image("image").resizable().frame(width: nil, height: nil)
                    .tag(0)
                
                    .tabItem { Image(systemName: "house.fill") }
                
                
                Image("image").resizable().frame(width: nil, height: nil)
                    .tag(1)
                
                    .tabItem { Image(systemName: "moon.fill") }
                
                
                Image("image").resizable().frame(width: nil, height: nil)
                    .tag(2)
                
                
                    .tabItem { Image(systemName: "gear.fill") }
                
                Image("image").resizable().frame(width: nil, height: nil).aspectRatio(contentMode: .fill)
                    .offset(x: -20)
                    .tag(3)
            
                    .tabItem { Image(systemName: "suit.heart.fill") }
                
                
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            
          
            .navigationBarItems(trailing: Menu(content: {
                
                Button(action: {
                    
                    
                    withAnimation{index = 0}
                    
                }, label: {
                    HStack{
                        
                        Text("house")
                        Image(systemName: "house.fill")
                        
                    }
                })
                
                
                Button(action: {
                    
                    
                    withAnimation{index = 1}
                    
                }, label: {
                    HStack{
                        
                        Text("Night")
                        Image(systemName: "moon.fill")
                        
                    }
                })
                
                Button(action: {
                    
                    
                    withAnimation{index = 2}
                    
                }, label: {
                    HStack{
                        
                        Text("Setting")
                        Image(systemName: "gear")
                        
                    }
                })
                
                Button(action: {
                    
                    
                    withAnimation{
                        
                        
             index = 3
                        
                        
                        
                    }
                    
                }, label: {
                    HStack{
                        
                        Text("Loved")
                        Image(systemName: "suit.heart.fill")
                        
                    }
                })
                
                
            }, label: {
                
                Image(systemName: "line.horizontal.3")
                
                
            }))
            
            
            
        }
        
        
    }
}
