Rails.application.routes.draw do
  get("/rock", { :controller => "application", :action => "play_rock" })
end
