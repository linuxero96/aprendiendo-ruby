class WelcomeController < ApplicationController
    def hello
        @variable = Pet.first.name
    end 
    
end