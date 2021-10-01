class PagesController < ApplicationController
    def home
        @weekly_plan = Plan.find(8)
        @monthly_plan = Plan.find(9)
        @weekend_plan = Plan.find(10)
        @guest_plan = Plan.find(11)
    end
    def about
    end
end