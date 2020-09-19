class BinsController < ApplicationController
  before_action :set_bin, only: [:show, :destroy, :update]
  skip_before_action :authorize_request, only: :show

  def index
    @bins = current_user.bins
    json_response(@bins)
  end

  def update
    @bin.update(bin_params)
    json_response(@bin)
  end

  def destroy
    @bin.destroy
    json_response('Deleted')
  end

  def create
    @bin = current_user.bins.create!(bin_params)
    json_response(@bin)
  end

  def show
    authorize_request if personal?
    json_response(@bin)
  end

  private

  def set_bin
    @bin = Bin.where(key: params[:id]).take
  end

  def bin_params
    params.permit(:text, :visibility)
  end

  def personal?
    @bin.visibility == 'personal'
  end

end
