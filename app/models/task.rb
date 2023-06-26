class Task < ApplicationRecord
    enum state: {
        waiting:  0,
        started:  1,
        finished: 2
    }

    scope :deleted, -> {where("deleted_at IS NOT NULL")}
    scope :active, -> {where("deleted_at IS NULL")}
end
