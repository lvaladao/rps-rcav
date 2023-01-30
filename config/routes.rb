Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/:move", { :controller => "application", :action => "play" })
end
