//
//  ContentView.swift
//  SwiftUIDesign
//
//  Created by tiany on 2020/2/17.
//  Copyright © 2020 ty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
            }
            .frame(width: 300, height: 220)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(CGSize(width: 0, height: -20))
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello, World!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("Certificate")
                            .foregroundColor(Color("accent"))
                    }
                    Spacer()
                    Image("Logo1")
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                Spacer()
                Image("Card1")
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 110, alignment: .top)
            }
            .frame(width: 340, height: 220, alignment: .top)
            .background(Color.black)
            .cornerRadius(20)
            .shadow(radius: CGFloat(20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
