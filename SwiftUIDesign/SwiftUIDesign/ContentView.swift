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
            
            TitleView()
            
            BackCardView()
                .background(Color("card2"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            BackCardView()
                .background(Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
                
            
            CardView()
            
            BottomCardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 300, height: 220)
        
    }
}

struct CardView: View {
    var body: some View {
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

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
            }
            .padding()
            Image("Background1")
            Spacer()
        }
    }
}

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.2)
            Text("1、自己打败自己是最可悲的失败，自己战胜自己是最可贵的胜利。\n2、人的肉体可以随着时间的推移而衰老，而赋予人的生命的思想却可以青春永驻，与日月同存。\n3、学问是我们随身的财产，我们自己在什么地方，我们的学问也跟着我们在一起。\n4、成功呈概率分布，关键是你能不能坚持到成功开始呈现的那一刻。\n5、人生道路坎柯多，但要懂得去生活！人生不但是以年月日计算的，事实往往是最好的日历。")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x: 0, y: 530)
    }
}
