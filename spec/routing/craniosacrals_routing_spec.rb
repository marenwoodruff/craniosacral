require "spec_helper"

describe CraniosacralsController do
  describe "routing" do

    it "routes to #index" do
      get("/craniosacrals").should route_to("craniosacrals#index")
    end

    it "routes to #new" do
      get("/craniosacrals/new").should route_to("craniosacrals#new")
    end

    it "routes to #show" do
      get("/craniosacrals/1").should route_to("craniosacrals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/craniosacrals/1/edit").should route_to("craniosacrals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/craniosacrals").should route_to("craniosacrals#create")
    end

    it "routes to #update" do
      put("/craniosacrals/1").should route_to("craniosacrals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/craniosacrals/1").should route_to("craniosacrals#destroy", :id => "1")
    end

  end
end
