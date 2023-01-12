//
//  ResultScrean.swift
//  ReadMed
//
//  Created by ShahadQadi on 17/06/1444 AH.
//
import SwiftUI

struct ResultScrean: View {
    @Environment(\.presentationMode) var presentationMode
    var MediModle: MedModle
    
    var body: some View {
        
        NavigationView{
            
            
            VStack(alignment: .center, spacing: 10){
                //Header
                Text(MediModle.title.localized)
                    .accessibility(label:Text(MediModle.title.localized))
                    .font(Font.custom("SF Pro", size: 26))
                    .foregroundColor(.black)
                Spacer(minLength: 1)
                //Image
                Image(MediModle.image,label:Text(MediModle.image))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150 , height: 150)
            
                ScrollView{
                VStack(alignment: .leading, spacing: 10) {
                    
                    
                    HStack(alignment: .top){
                        
                        Image(systemName:"pills")
                            .foregroundColor(Color("symbols"))
                            .accessibility(hidden: true)
                        
                        Text("Dosage:")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("Background"))
                            .accessibility(label: Text("Dosage:"))
                    }
                    
                    Text(MediModle.dosage.localized)
                        .multilineTextAlignment(.leading)
                        .accessibility(label:Text(MediModle.dosage.localized))
                    
                    HStack(alignment: .top){
                        
                        Image(systemName:"cross")
                            .foregroundColor(Color("symbols"))
                            .accessibility(hidden: true)
                        
                        Text("Side Effects:")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("Background"))
                            .accessibility(label: Text("Side Effects:"))
                    }
                    Text(MediModle.sideEffect.localized)
                        .multilineTextAlignment(.leading)
                        .accessibility(label:Text(MediModle.sideEffect.localized))
                    HStack(alignment: .top){
                        
                        Image(systemName:"exclamationmark.triangle")
                            .foregroundColor(Color("symbols"))
                            .accessibility(hidden: true)
                        
                        Text("Medicine interactions:")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("Background"))
                            .accessibility(label: Text("Medicine interactions:"))
                    }
                    Text(MediModle.medInt.localized)
                        .multilineTextAlignment(.leading)
                        .accessibility(label:Text(MediModle.medInt.localized))
                    
                }
                .frame(maxWidth: .infinity, maxHeight:.infinity)
                .padding()
                .background(Color("gray"))
                .cornerRadius(16)
                .padding()
                
                //.ignoresSafeArea()
                
            }
                
            }
            
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.backward")
                        .accessibility(label:Text("Back Button"))
                        .foregroundColor(Color("Background"))
                        .font(Font.custom("SF Pro", size: 20))
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .padding(.horizontal,10)
                }
            }
        }
    }
    
}

struct ResultScrean_Previews: PreviewProvider {
    static var previews: some View {
        ResultScrean(MediModle:MedModle.mediModle[0])
    }
}



extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
