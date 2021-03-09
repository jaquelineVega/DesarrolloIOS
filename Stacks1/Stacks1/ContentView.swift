//
//  ContentView.swift
//  Stacks1
//
//  Created by MTWDM on 27/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Text("LargeTitlle").font(.largeTitle).foregroundColor(.accentColor).padding().background(Color.red)
        Text("texto").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
        Text("Texto2").font(.title2).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        Text("Texto3").font(.title3).foregroundColor(.secondary)
            
            Text("Body").font(.footnote).bold()
            Text("Headline").font(.headline).padding(.bottom,100)
            Text("Subheading").font(.subheadline).italic()
            Text("Cpation").font(.caption).strikethrough()
            
            ZStack{
                Text("").frame( maxWidth:.infinity,maxHeight: .infinity).background(Color.red)
                Text("").frame( maxWidth:.infinity,maxHeight: .infinity).background(Color.blue).padding(20)
                Text("").frame( maxWidth:.infinity,maxHeight: .infinity).background(Color.orange).padding(40)              }
            
            HStack{
                Text("Inicio").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Productos").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Servicios").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Contacto").font(.caption).foregroundColor(.accentColor).padding(10)
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
