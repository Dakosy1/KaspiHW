//
//  SwiftUIView.swift
//  SwiftUI1
//
//  Created by Нурдаулет Даулетхан on 10.04.2024.
//

import SwiftUI

struct SwiftUIView: View {
    @State var text = "Your result:"
    @State var num1 = ""
    @State var num2 = ""
    @State var nameText = "Drdablack"
    @State var resultInt: Double = 0
    @State var result = ""
    
    func delete(){
        num1 = ""
        num2 = ""
    }

    var body: some View {
        VStack {
            
            TextField("Enter your name", text: $num1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.system(size: 30))
            
            TextField("Enter your name", text: $num2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .font(.system(size: 30))
            
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 30))
            
            HStack{
                Button(action: {
                    if let number1 = Double(num1), let number2 = Double(num2){
                        resultInt = number1 + number2
                        text = String(resultInt)
                        delete()
                    }else{
                        print("Error")
                    }
//                    resultInt = num1 - num2
//                    text = String(resultInt)
//                    delete()
//                    text = ""
                }, label: {
                    Text("+")
                        .frame(width: 100, height: 100)
                        .font(.system(size: 70))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    if let number1 = Double(num1), let number2 = Double(num2){
                        resultInt = number1 - number2
                        text = String(resultInt)
                        delete()
                    }else{
                        print("Error")
                    }
                    
//                    resultInt = (Int(num1)! - Int(num2)!)
//                    text = String(resultInt)
//                    delete()
                }, label: {
                    Text("-")
                        .frame(width: 100, height: 100)
                        .font(.system(size: 70))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
//                        .frame(width: 100, height: 100)
                })
                
                
            }
            
            HStack{
                Button(action: {
                    if let number1 = Double(num1), let number2 = Double(num2){
                        resultInt = number1 * number2
                        text = String(resultInt)
                        delete()
                    }else{
                        print("Error")
                    }
                }, label: {
                    Text("*")
                        .frame(width: 100, height: 100)
                        .font(.system(size: 70))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                })
                
                
                
                Button(action: {
                    if let number1 = Double(num1), let number2 = Double(num2){
                        resultInt = number1 / number2
                        text = String(resultInt)
                        delete()
                    }else{
                        print("Error")
                    }
                }, label: {
                    Text("/")
                        .frame(width: 100, height: 100)
                        .font(.system(size: 70))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                })
            }
            
            
        }
    }
}

struct ListShowCase: View{
    
    let items = [
        ListItem(name: "Pencil", imageName: "pencil"),
        ListItem(name: "Eraser", imageName: "eraser"),
        ListItem(name: "Trash", imageName: "trash"),
        ListItem(name: "Folder", imageName: "folder")
    ]
    
    var body: some View{
        Text("")
        
        List(items) { item in
            HStack{
                Image(systemName: item.imageName)
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(item.name)
                    .font(.headline)
            }
        }
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    
    var name: String
    var imageName: String
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListShowCase()
    }
}
