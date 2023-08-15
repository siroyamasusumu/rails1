class User < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate, presence: true
    validate :enddate_check
    def enddate_check
        unless self.startdate < self.enddate then
            errors.add(:base, "終了日は、開始日以降の日付としてください")
        end
    end
    validates :memo, presence: true, length: { maximum: 500}
end
