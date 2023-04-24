class Round < ApplicationRecord
    #ensure that all information is provided when creating a new round
    validates_presence_of :course
    validates_presence_of :weather
    validates_presence_of :date
    validates_presence_of :hole1
    validates_presence_of :hole2
    validates_presence_of :hole3
    validates_presence_of :hole4
    validates_presence_of :hole5
    validates_presence_of :hole6
    validates_presence_of :hole7
    validates_presence_of :hole8
    validates_presence_of :hole9

end
