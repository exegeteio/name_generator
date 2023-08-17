# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @names = Name.random.limit(3).pluck(:name)
    respond_to do |format|
      format.html
      format.json { render json: @names }
    end
  end

  def male
    @names = Name.male.random.limit(3).pluck(:name)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @names }
    end
  end

  def female
    @names = Name.female.random.limit(3).pluck(:name)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @names }
    end
  end
end
