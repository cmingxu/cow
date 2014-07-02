require "spec_helper"

describe BookRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/book_records").should route_to("book_records#index")
    end

    it "routes to #new" do
      get("/book_records/new").should route_to("book_records#new")
    end

    it "routes to #show" do
      get("/book_records/1").should route_to("book_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_records/1/edit").should route_to("book_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_records").should route_to("book_records#create")
    end

    it "routes to #update" do
      put("/book_records/1").should route_to("book_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_records/1").should route_to("book_records#destroy", :id => "1")
    end

  end
end
