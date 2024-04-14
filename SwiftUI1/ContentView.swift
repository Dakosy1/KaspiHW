//
//  ContentView.swift
//  SwiftUI1
//
//  Created by Нурдаулет Даулетхан on 10.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Wassap Bro"
    @State var name = ""
    @State var nameText = "Drdablack"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text(text)
                .font(.system(size: 40))
                .foregroundColor(.blue)
            
            Text(nameText)
                .font(.system(size: 40))
                .foregroundColor(.blue)
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                nameText = name
                name = ""
            }, label: {
                Text("Submit")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
}

struct ZStackShowcase: View{
    var body: some View{
        ZStack{
            Color.red
                .frame(width: 200, height: 200)
                .cornerRadius(20)
            
            Color.green
                .frame(width: 150, height: 150)
                .cornerRadius(20)
            
            Color.blue
                .frame(width: 100, height: 100)
                .cornerRadius(20)
        }
    }
}

struct HStackShowcase: View{
    var body: some View{
        HStack(spacing: 25, content: {
            Color.red
                .frame(width: 100, height: 100)
                .cornerRadius(20)
//                .padding(.trailing, 12)
            
            Color.green
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            
//            Color.blue
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
            
            VStack{
                Color.red
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                
                Color.green
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            }
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
