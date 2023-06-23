//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Ruslan Ismayilov on 6/21/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                        .background(.gray)
                        .cornerRadius(50)
                        
                }
            }
               .padding()
            
                Spacer()
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                Button{
                    isShowingSafariView = true
                } label: {
                    AFButton(title: "Learn more")
                    
                }
            }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url:URL(string : framework.urlString)!)
        }
        }
    }
    
    struct FrameworkDetailView_Previews: PreviewProvider {
        static var previews: some View {
            FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
               
        }
    }

