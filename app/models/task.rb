class Task < ApplicationRecord
    enum state: {
        waiting:  0,
        started:  1,
        finished: 2
    }
end
