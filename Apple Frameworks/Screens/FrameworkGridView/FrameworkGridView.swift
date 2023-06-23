//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Ruslan Ismayilov on 6/17/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.column){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                            viewModel.selectedframework = framework
                        }
                    }
                }
                
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedframework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
                
            }
        }
    }


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

