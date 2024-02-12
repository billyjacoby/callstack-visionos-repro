import SwiftUI
import React
import React_RCTSwiftExtensions


struct ContentView: View {
  let handedAlert: Bool
  @State var isShowingAlert = false

  init(handedAlert: Bool, isShowingAlert: Bool = false) {
    self.handedAlert = handedAlert
    self.isShowingAlert = handedAlert
  }
    var body: some View {
        VStack {
          Text("I'm in space!")
          
            Button("Show Alert") {
                isShowingAlert.toggle()
            }
        }
        .padding()
      
    }
}

@main
struct rnVisionLATESTApp: App {
  @UIApplicationDelegateAdaptor var delegate: AppDelegate
  @State private var immersionLevel: ImmersionStyle = .mixed
  
  var body: some Scene {
    RCTMainWindow(moduleName: "rnVisionLATEST")
       ImmersiveSpace(id: "TestImmersiveSpace") {
         // RealityKit content goes here
         ContentView(handedAlert: true)
       }
        .immersionStyle(selection: $immersionLevel, in: .mixed, .progressive, .full)
  }
}
