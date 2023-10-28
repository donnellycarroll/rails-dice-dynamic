Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "home" })
  
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "zebra", :action => "roll" })
end
