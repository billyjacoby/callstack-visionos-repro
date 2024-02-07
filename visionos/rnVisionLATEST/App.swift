import SwiftUI
import React
import React_RCTSwiftExtensions

@main
struct rnVisionLATESTApp: App {
  @UIApplicationDelegateAdaptor var delegate: AppDelegate
  @State private var immersionLevel: ImmersionStyle = .mixed
  
  var body: some Scene {
    RCTMainWindow(moduleName: "rnVisionLATEST")
       ImmersiveSpace(id: "TestImmersiveSpace") {
         // RealityKit content goes here
       }
        .immersionStyle(selection: $immersionLevel, in: .mixed, .progressive, .full)
  }
}
