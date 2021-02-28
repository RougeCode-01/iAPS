import SwiftUI

extension Home {
    class ViewModel<Provider>: BaseViewModel<Provider>, ObservableObject where Provider: HomeProvider {
        @Injected() var apsManager: APSManager!

        func runOpenAPS() {
            apsManager.runTest()
        }

        func makeProfiles() {
            apsManager.makeProfiles()
        }

        func fetchGlucose() {
            apsManager.fetchLastGlucose()
        }

        func makeMeal() {
            apsManager.makeMeal()
        }
    }
}