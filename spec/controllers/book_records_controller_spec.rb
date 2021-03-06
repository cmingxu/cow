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

describe BookRecordsController do

  # This should return the minimal set of attributes required to create a valid
  # BookRecord. As you add validations to BookRecord, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "client_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BookRecordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all book_records as @book_records" do
      book_record = BookRecord.create! valid_attributes
      get :index, {}, valid_session
      assigns(:book_records).should eq([book_record])
    end
  end

  describe "GET show" do
    it "assigns the requested book_record as @book_record" do
      book_record = BookRecord.create! valid_attributes
      get :show, {:id => book_record.to_param}, valid_session
      assigns(:book_record).should eq(book_record)
    end
  end

  describe "GET new" do
    it "assigns a new book_record as @book_record" do
      get :new, {}, valid_session
      assigns(:book_record).should be_a_new(BookRecord)
    end
  end

  describe "GET edit" do
    it "assigns the requested book_record as @book_record" do
      book_record = BookRecord.create! valid_attributes
      get :edit, {:id => book_record.to_param}, valid_session
      assigns(:book_record).should eq(book_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BookRecord" do
        expect {
          post :create, {:book_record => valid_attributes}, valid_session
        }.to change(BookRecord, :count).by(1)
      end

      it "assigns a newly created book_record as @book_record" do
        post :create, {:book_record => valid_attributes}, valid_session
        assigns(:book_record).should be_a(BookRecord)
        assigns(:book_record).should be_persisted
      end

      it "redirects to the created book_record" do
        post :create, {:book_record => valid_attributes}, valid_session
        response.should redirect_to(BookRecord.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved book_record as @book_record" do
        # Trigger the behavior that occurs when invalid params are submitted
        BookRecord.any_instance.stub(:save).and_return(false)
        post :create, {:book_record => { "client_id" => "invalid value" }}, valid_session
        assigns(:book_record).should be_a_new(BookRecord)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BookRecord.any_instance.stub(:save).and_return(false)
        post :create, {:book_record => { "client_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested book_record" do
        book_record = BookRecord.create! valid_attributes
        # Assuming there are no other book_records in the database, this
        # specifies that the BookRecord created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BookRecord.any_instance.should_receive(:update_attributes).with({ "client_id" => "1" })
        put :update, {:id => book_record.to_param, :book_record => { "client_id" => "1" }}, valid_session
      end

      it "assigns the requested book_record as @book_record" do
        book_record = BookRecord.create! valid_attributes
        put :update, {:id => book_record.to_param, :book_record => valid_attributes}, valid_session
        assigns(:book_record).should eq(book_record)
      end

      it "redirects to the book_record" do
        book_record = BookRecord.create! valid_attributes
        put :update, {:id => book_record.to_param, :book_record => valid_attributes}, valid_session
        response.should redirect_to(book_record)
      end
    end

    describe "with invalid params" do
      it "assigns the book_record as @book_record" do
        book_record = BookRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BookRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => book_record.to_param, :book_record => { "client_id" => "invalid value" }}, valid_session
        assigns(:book_record).should eq(book_record)
      end

      it "re-renders the 'edit' template" do
        book_record = BookRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BookRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => book_record.to_param, :book_record => { "client_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested book_record" do
      book_record = BookRecord.create! valid_attributes
      expect {
        delete :destroy, {:id => book_record.to_param}, valid_session
      }.to change(BookRecord, :count).by(-1)
    end

    it "redirects to the book_records list" do
      book_record = BookRecord.create! valid_attributes
      delete :destroy, {:id => book_record.to_param}, valid_session
      response.should redirect_to(book_records_url)
    end
  end

end
