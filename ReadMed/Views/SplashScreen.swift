//
//  SplashScreen.swift
//  ReadMed
//
//  Created by ShahadQadi on 17/06/1444 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if(isActive){
            MainScreen()
            
        }else{
            VStack{
                
                VStack{
                    Spacer()
                    Image("ReadMed",label: Text("Logo"))
                        .resizable()
                        .aspectRatio(contentMode:.fill )
                    .frame(width: 250 , height: 250)
                       .clipShape(Circle())
                        //.accessibility(label: Text("Logo"))
                    Spacer()
                    
                    
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
