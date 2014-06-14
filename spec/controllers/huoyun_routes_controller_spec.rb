# -*- encoding : utf-8 -*-
require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HuoyunRoutesController do

  # This should return the minimal set of attributes required to create a valid
  # HuoyunRoute. As you add validations to HuoyunRoute, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "form_huozhan_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HuoyunRoutesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all huoyun_routes as @huoyun_routes" do
      huoyun_route = HuoyunRoute.create! valid_attributes
      get :index, {}, valid_session
      assigns(:huoyun_routes).should eq([huoyun_route])
    end
  end

  describe "GET show" do
    it "assigns the requested huoyun_route as @huoyun_route" do
      huoyun_route = HuoyunRoute.create! valid_attributes
      get :show, {:id => huoyun_route.to_param}, valid_session
      assigns(:huoyun_route).should eq(huoyun_route)
    end
  end

  describe "GET new" do
    it "assigns a new huoyun_route as @huoyun_route" do
      get :new, {}, valid_session
      assigns(:huoyun_route).should be_a_new(HuoyunRoute)
    end
  end

  describe "GET edit" do
    it "assigns the requested huoyun_route as @huoyun_route" do
      huoyun_route = HuoyunRoute.create! valid_attributes
      get :edit, {:id => huoyun_route.to_param}, valid_session
      assigns(:huoyun_route).should eq(huoyun_route)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HuoyunRoute" do
        expect {
          post :create, {:huoyun_route => valid_attributes}, valid_session
        }.to change(HuoyunRoute, :count).by(1)
      end

      it "assigns a newly created huoyun_route as @huoyun_route" do
        post :create, {:huoyun_route => valid_attributes}, valid_session
        assigns(:huoyun_route).should be_a(HuoyunRoute)
        assigns(:huoyun_route).should be_persisted
      end

      it "redirects to the created huoyun_route" do
        post :create, {:huoyun_route => valid_attributes}, valid_session
        response.should redirect_to(HuoyunRoute.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved huoyun_route as @huoyun_route" do
        # Trigger the behavior that occurs when invalid params are submitted
        HuoyunRoute.any_instance.stub(:save).and_return(false)
        post :create, {:huoyun_route => { "form_huozhan_id" => "invalid value" }}, valid_session
        assigns(:huoyun_route).should be_a_new(HuoyunRoute)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HuoyunRoute.any_instance.stub(:save).and_return(false)
        post :create, {:huoyun_route => { "form_huozhan_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested huoyun_route" do
        huoyun_route = HuoyunRoute.create! valid_attributes
        # Assuming there are no other huoyun_routes in the database, this
        # specifies that the HuoyunRoute created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HuoyunRoute.any_instance.should_receive(:update_attributes).with({ "form_huozhan_id" => "1" })
        put :update, {:id => huoyun_route.to_param, :huoyun_route => { "form_huozhan_id" => "1" }}, valid_session
      end

      it "assigns the requested huoyun_route as @huoyun_route" do
        huoyun_route = HuoyunRoute.create! valid_attributes
        put :update, {:id => huoyun_route.to_param, :huoyun_route => valid_attributes}, valid_session
        assigns(:huoyun_route).should eq(huoyun_route)
      end

      it "redirects to the huoyun_route" do
        huoyun_route = HuoyunRoute.create! valid_attributes
        put :update, {:id => huoyun_route.to_param, :huoyun_route => valid_attributes}, valid_session
        response.should redirect_to(huoyun_route)
      end
    end

    describe "with invalid params" do
      it "assigns the huoyun_route as @huoyun_route" do
        huoyun_route = HuoyunRoute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HuoyunRoute.any_instance.stub(:save).and_return(false)
        put :update, {:id => huoyun_route.to_param, :huoyun_route => { "form_huozhan_id" => "invalid value" }}, valid_session
        assigns(:huoyun_route).should eq(huoyun_route)
      end

      it "re-renders the 'edit' template" do
        huoyun_route = HuoyunRoute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HuoyunRoute.any_instance.stub(:save).and_return(false)
        put :update, {:id => huoyun_route.to_param, :huoyun_route => { "form_huozhan_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested huoyun_route" do
      huoyun_route = HuoyunRoute.create! valid_attributes
      expect {
        delete :destroy, {:id => huoyun_route.to_param}, valid_session
      }.to change(HuoyunRoute, :count).by(-1)
    end

    it "redirects to the huoyun_routes list" do
      huoyun_route = HuoyunRoute.create! valid_attributes
      delete :destroy, {:id => huoyun_route.to_param}, valid_session
      response.should redirect_to(huoyun_routes_url)
    end
  end

end
