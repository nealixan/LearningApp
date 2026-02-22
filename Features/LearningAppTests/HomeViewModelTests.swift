import XCTest
@testable import LearningApp

final class MockCounterService: CounterServiceProtocol {
    func increment(value: Int) -> Int {
        return 42
    }
}

final class HomeViewModelTests: XCTestCase {
    
    func testIncrementUsesService() {
        let mockService = MockCounterService()
        let viewModel = HomeViewModel(counterService: mockService)
        
        viewModel.increment()
        
        XCTAssertEqual(viewModel.counter, 42)
    }
}
