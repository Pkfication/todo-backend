class BinsController < ApplicationController
  before_action :set_bin, only: [:show, :destroy, :update]

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
    json_response(@bin)
  end

  def create
    @bin = current_user.bins.create!(bin_params)
    json_response(@bin)
  end

  def show
    json_response(@bin)
  end

  private

  def set_bin
    @bin = Bin.where(key: params[:id])
  end

  def bin_params
    params.permit(:text)
  end

end
