class PagesController < ApplicationController
    def home
        @weekly_plan = Plan.find(1)
        @monthly_plan = Plan.find(2)
        @weekend_plan = Plan.find(3)
        @guest_plan = Plan.find(4)
    end
    def about
    end
end