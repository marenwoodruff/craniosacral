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

describe CraniosacralsController do

  # This should return the minimal set of attributes required to create a valid
  # Craniosacral. As you add validations to Craniosacral, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CraniosacralsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all craniosacrals as @craniosacrals" do
      craniosacral = Craniosacral.create! valid_attributes
      get :index, {}, valid_session
      assigns(:craniosacrals).should eq([craniosacral])
    end
  end

  describe "GET show" do
    it "assigns the requested craniosacral as @craniosacral" do
      craniosacral = Craniosacral.create! valid_attributes
      get :show, {:id => craniosacral.to_param}, valid_session
      assigns(:craniosacral).should eq(craniosacral)
    end
  end

  describe "GET new" do
    it "assigns a new craniosacral as @craniosacral" do
      get :new, {}, valid_session
      assigns(:craniosacral).should be_a_new(Craniosacral)
    end
  end

  describe "GET edit" do
    it "assigns the requested craniosacral as @craniosacral" do
      craniosacral = Craniosacral.create! valid_attributes
      get :edit, {:id => craniosacral.to_param}, valid_session
      assigns(:craniosacral).should eq(craniosacral)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Craniosacral" do
        expect {
          post :create, {:craniosacral => valid_attributes}, valid_session
        }.to change(Craniosacral, :count).by(1)
      end

      it "assigns a newly created craniosacral as @craniosacral" do
        post :create, {:craniosacral => valid_attributes}, valid_session
        assigns(:craniosacral).should be_a(Craniosacral)
        assigns(:craniosacral).should be_persisted
      end

      it "redirects to the created craniosacral" do
        post :create, {:craniosacral => valid_attributes}, valid_session
        response.should redirect_to(Craniosacral.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved craniosacral as @craniosacral" do
        # Trigger the behavior that occurs when invalid params are submitted
        Craniosacral.any_instance.stub(:save).and_return(false)
        post :create, {:craniosacral => {  }}, valid_session
        assigns(:craniosacral).should be_a_new(Craniosacral)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Craniosacral.any_instance.stub(:save).and_return(false)
        post :create, {:craniosacral => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested craniosacral" do
        craniosacral = Craniosacral.create! valid_attributes
        # Assuming there are no other craniosacrals in the database, this
        # specifies that the Craniosacral created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Craniosacral.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => craniosacral.to_param, :craniosacral => { "these" => "params" }}, valid_session
      end

      it "assigns the requested craniosacral as @craniosacral" do
        craniosacral = Craniosacral.create! valid_attributes
        put :update, {:id => craniosacral.to_param, :craniosacral => valid_attributes}, valid_session
        assigns(:craniosacral).should eq(craniosacral)
      end

      it "redirects to the craniosacral" do
        craniosacral = Craniosacral.create! valid_attributes
        put :update, {:id => craniosacral.to_param, :craniosacral => valid_attributes}, valid_session
        response.should redirect_to(craniosacral)
      end
    end

    describe "with invalid params" do
      it "assigns the craniosacral as @craniosacral" do
        craniosacral = Craniosacral.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Craniosacral.any_instance.stub(:save).and_return(false)
        put :update, {:id => craniosacral.to_param, :craniosacral => {  }}, valid_session
        assigns(:craniosacral).should eq(craniosacral)
      end

      it "re-renders the 'edit' template" do
        craniosacral = Craniosacral.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Craniosacral.any_instance.stub(:save).and_return(false)
        put :update, {:id => craniosacral.to_param, :craniosacral => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested craniosacral" do
      craniosacral = Craniosacral.create! valid_attributes
      expect {
        delete :destroy, {:id => craniosacral.to_param}, valid_session
      }.to change(Craniosacral, :count).by(-1)
    end

    it "redirects to the craniosacrals list" do
      craniosacral = Craniosacral.create! valid_attributes
      delete :destroy, {:id => craniosacral.to_param}, valid_session
      response.should redirect_to(craniosacrals_url)
    end
  end

end
