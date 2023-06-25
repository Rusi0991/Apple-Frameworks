//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Ruslan Ismayilov on 6/21/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
//    @Binding var isShowingDetailView : Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack{
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
//                Spacer()
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                Button{
                    isShowingSafariView = true
                } label: {
//                    AFButton(title: "Learn more")
                    Label("Learn More", systemImage: "book.fill")
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
//                .foregroundColor(.white)
//                .buttonBorderShape(.roundedRectangle(radius: 20))
                .tint(.red)
            }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url:URL(string : framework.urlString)!)
        }
        }
    }
    
    struct FrameworkDetailView_Previews: PreviewProvider {
        static var previews: some View {
            FrameworkDetailView(framework: MockData.sampleFramework)
               
        }
    }

