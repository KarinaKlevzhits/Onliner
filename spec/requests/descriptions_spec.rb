# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/descriptions', type: :request do
  # Description. As you add validations to Description, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Description.create! valid_attributes
      get descriptions_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      description = Description.create! valid_attributes
      get description_url(description)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_description_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      description = Description.create! valid_attributes
      get edit_description_url(description)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Description' do
        expect do
          post descriptions_url, params: { description: valid_attributes }
        end.to change(Description, :count).by(1)
      end

      it 'redirects to the created description' do
        post descriptions_url, params: { description: valid_attributes }
        expect(response).to redirect_to(description_url(Description.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Description' do
        expect do
          post descriptions_url, params: { description: invalid_attributes }
        end.to change(Description, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post descriptions_url, params: { description: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested description' do
        description = Description.create! valid_attributes
        patch description_url(description), params: { description: new_attributes }
        description.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the description' do
        description = Description.create! valid_attributes
        patch description_url(description), params: { description: new_attributes }
        description.reload
        expect(response).to redirect_to(description_url(description))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        description = Description.create! valid_attributes
        patch description_url(description), params: { description: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested description' do
      description = Description.create! valid_attributes
      expect do
        delete description_url(description)
      end.to change(Description, :count).by(-1)
    end

    it 'redirects to the descriptions list' do
      description = Description.create! valid_attributes
      delete description_url(description)
      expect(response).to redirect_to(descriptions_url)
    end
  end
end
