//
//  CombineDisposeBag
//
//  Check the LICENSE file for details
//  Created by David Collado
//

import Combine

public class DisposeBag {
    var bag: [Cancellable]

    public init() {
        bag = [Cancellable]()
    }

    func add(_ cancellable: Cancellable) {
        bag.append(cancellable)
    }

    deinit {
        bag.forEach { cancellable in
            cancellable.cancel()
        }
    }
}

public extension Cancellable {
    func disposedBy(_ bag: DisposeBag) {
        bag.add(self)
    }
}
