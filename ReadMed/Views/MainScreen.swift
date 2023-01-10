//
//  MainScreen.swift
//  ReadMed
//
//  Created by ShahadQadi on 17/06/1444 AH.
//

import SwiftUI

struct MainScreen: View {
    
    let mi = MedModle.mediModle
    @State var filtermediModle: [MedModle] = []
    @State var searchText = ""
    var body: some View {
        
        NavigationStack {
            
                VStack(alignment: .center){
                    
                    Spacer()
                        .frame(height: 90)
                    
                    Image("ReadMed")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150 , height: 150)
                        .clipShape(Circle())
                        .accessibility(label: Text("Logo"))
                    Spacer()
                        .frame(height: 30)
                    VStack(alignment:.leading,spacing: 1){
                        Text("Find important information about your medicine..")
                            .font(Font.custom("SF Pro", size: 20))
                            .foregroundColor(Color("Background"))
                            .accessibility(label: Text("Find important information about your medicine.."))
                            .padding(.leading)
                            
                        showSearchText
                        
                    }
                    VStack {
                        List{
                            ForEach(filtermediModle, id: \.id) { mediModle in
                                NavigationLink {
                                    ResultScrean(MediModle: mediModle)
                                        .navigationBarBackButtonHidden(true)
                                } label: {
                                    Text(mediModle.title.localized)
                                        .accessibilityHint(Text(mediModle.title.localized))

                                }
                                
                            }
                        }.padding(.vertical,-20)
                            .listStyle(PlainListStyle())
                            .listSectionSeparator(Visibility.visible)
                    }
                }
                
            
        } .ignoresSafeArea()
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}


extension MainScreen{
    var showSearchText: some View {
        HStack{
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.localized.isEmpty ? Color.white : Color.black)
                .accessibility(hidden: true)
            TextField("Search", text: $searchText)
                .accessibility(value:Text("Search"))
                .overlay(
                    Image(systemName:"xmark.circle.fill")
                        .accessibility(hidden: true)
                        .padding()
                        .offset(x: 140)
                        .foregroundColor(Color.black)
                        .opacity(searchText.isEmpty ? 0.0 : 1)
                    
                        .onTapGesture {
                            searchText = ""
                        }
                )
                .onChange(of: searchText) { newValue in
                    //print(newValue)
                    filtermediModle = mi.filter { mediModle in
            
                        mediModle.title.localized.lowercased().contains(newValue.lowercased())
                    }

                    
                }
            
        }
        
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("Background"))
        )
        .padding()
    }
}
