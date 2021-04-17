//
//  ContentView.swift
//  Imagen
//
//  Created by Daniella Garcia Freyre on 22/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Bienvenido").font(.title).padding()
            Image("logo").resizable().scaledToFill().scaledToFit().background(Color.blue)
            
            Image("foto").resizable().padding(10).scaledToFill().scaledToFit().clipShape(Circle())
            
            Text("Jaquelin Vega").font(.caption)
            Image(systemName: "moon.circle.fill").resizable().padding(20).scaledToFit()                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
