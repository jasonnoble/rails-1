class GreetingController < ApplicationController
  def index
        @message="siemanko"
	@age=8
	@table={"headings" => ["liczba1" , "liczba2", "suma"],
		"body" => [[1,1,2],[1,2,3],[1,3,4]]
		}
  end
end
