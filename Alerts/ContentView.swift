//
//  ContentView.swift
//  Alerts
//
//  Created by Bernard FitzGerald on 20/6/2023.
//

import SwiftUI


// Example 1: A baisc alert
struct ContentView: View {
    @State private var showAlert = false
 
    var body: some View {
        VStack {
            // Your app's content here
 
            Button("Show Alert") {
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert Title"),
                message: Text("Alert message goes here"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

// Example 2: Customised buttons in the alert
//struct ContentView: View {
//    @State private var showAlert = false
//
//    var body: some View {
//        VStack {
//            // Your app's content here
//
//            Button("Show Alert") {
//                showAlert = true
//            }
//        }
//        .alert(isPresented: $showAlert) {
//            Alert(
//                title: Text("Delete Item"),
//                message: Text("Are you sure you want to delete this item?"),
//                primaryButton: .destructive(Text("Delete")) {
//                    // Action to perform on delete
//                },
//                secondaryButton: .cancel()
//            )
//        }
//    }
//}

// Example 3: Demonstrating showing an alert onAppear based on a condition
//struct ContentView: View {
//    @State private var showAlert = false
//    @State private var showError = false
//
//    var body: some View {
//        VStack {
//            // Your app's content here
//
//            Button("Show Error") {
//                showError = true
//            }
//        }
//        .alert(isPresented: $showAlert) {
//            Alert(
//                title: Text("Error"),
//                message: Text("An error occurred."),
//                dismissButton: .default(Text("OK"))
//            )
//        }
//        .onAppear {
//            if showError {
//                showAlert = true
//            }
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
