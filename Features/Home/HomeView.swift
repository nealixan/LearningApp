import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel(counterService: CounterService()
    )
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(viewModel.counter)")
                .front(.title)
            
            Button("Increment") {
                viewModel.increment()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
}
