import Foundation
import Observation

protocol CounterServiceProtocol {
    func increment(value: Int) -> Int
}

final class CounterService: CounterServiceProtocol {
    func increment(value: Int) -> Int {
        value + 1
    }
}

@Observable
final class HomeViewModel {
    private let counterService: CounterServiceProtocol
    var count: Int = 0
    init(counterService: CounterServiceProtocol) {
        self.counterService = counterService
    }
    
    func increment() {
        counter = counterService.increment(value: counter)
    }
}
