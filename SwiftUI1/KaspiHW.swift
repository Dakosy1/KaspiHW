import SwiftUI

struct KaspiHW: View {
    @State private var favoriteColor = 0
    @State private var searchText = ""
    @State private var selectedDate = Date()
    @State var name = ""
    
    func transferView(amount: String, dayOfTheMonth: String, NameSurname: String) -> some View {
        VStack{
            Text(dayOfTheMonth)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], -8)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.2))
                )
            HStack{
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 33))
                    .padding(.trailing, 30)
                
                VStack(alignment: .leading) {
                    Text("Kaspi Gold")
                    
                    HStack{
                        Image(systemName: "chevron.right")
                            .foregroundColor(.red)

                        Text(NameSurname)
                        
                        
                    }
                    Text("Клиенту Каспи")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Text(amount)
                    .padding(.leading, 8)
            }
        }

    }



    var body: some View {
        VStack {
            HStack{
                Image(systemName: "line.horizontal.3") // Иконка бургер-меню
                    .foregroundColor(.red)
                    .padding(.trailing, 120)
                    .font(.system(size: 24)) // Устанавливаем размер шрифта

                Text("Переводы")
                    .padding(.trailing, 150)
            }
            
            
            Picker("", selection: $favoriteColor) {
                Text("Мои переводы").tag(0)
                
                Text("История").tag(1)
            }
            .background(Color.red)
            .pickerStyle(.segmented)
            
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.gray.opacity(0.2))
            
            HStack{
                Image(systemName: "calendar")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .foregroundColor(.accentColor)
                
                Text("9 Декабря - 16 Декабря")
            }
            .padding(.trailing, 130)
            
            transferView(amount: "1 234,00 т", dayOfTheMonth: "15 декабря", NameSurname: "Батыр Ш.")
            
            transferView(amount: "123 456,00 т", dayOfTheMonth: "13 декабря", NameSurname: "Батыр Ш.")
            
            transferView(amount: "456,00 т", dayOfTheMonth: "12 декабря", NameSurname: "Батыр Ш.")
            
            transferView(amount: "23 456,00т", dayOfTheMonth: "12 декабря", NameSurname: "Батыр Ш.")
            
            transferView(amount: "23 456,00т", dayOfTheMonth: "12 декабря", NameSurname: "Батыр Ш.")
            
        }
//        .padding(.bottom, 25)
    }
}


struct KaspiHW_Previews: PreviewProvider {
    static var previews: some View {
        KaspiHW()
    }
}












//import SwiftUI
//
//struct KaspiHW: View {
//    @State private var favoriteColor = 0
//    @State private var searchText = ""
//    @State private var selectedDate = Date()
//
//    var body: some View {
//        VStack {
//            HStack{
//                Text("Переводы")
//                    .foregroundColor(.black)
//                    .padding()
////                    .background(Color.blue)
//            }
//            Picker("What is your favorite color?", selection: $favoriteColor) {
//                Text("Red").tag(0)
//
//                Text("Green").tag(1)
//            }
////            .foregroundColor(.white)
//            .background(Color.red)
//            .pickerStyle(.segmented)
//
//            NavigationStack {
////                Text("Searching for \(searchText)")
////                    .navigationTitle("Searchable Example")
//
//            }
//            .searchable(text: $searchText)
//
////            Text("Selected date is: \(selectedDate)")
////
////                  DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
////                    .datePickerStyle(.graphical)
////                    .padding()
//
//
//        }
//    }
//}
//
//
//struct KaspiHW_Previews: PreviewProvider {
//    static var previews: some View {
//        KaspiHW()
//    }
//}
//
