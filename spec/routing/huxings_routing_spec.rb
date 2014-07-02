require "spec_helper"

describe HuxingsController do
  describe "routing" do

    it "routes to #index" do
      get("/huxings").should route_to("huxings#index")
    end

    it "routes to #new" do
      get("/huxings/new").should route_to("huxings#new")
    end

    it "routes to #show" do
      get("/huxings/1").should route_to("huxings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/huxings/1/edit").should route_to("huxings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/huxings").should route_to("huxings#create")
    end

    it "routes to #update" do
      put("/huxings/1").should route_to("huxings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/huxings/1").should route_to("huxings#destroy", :id => "1")
    end

  end
end
