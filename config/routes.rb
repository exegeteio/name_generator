# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  get "/male", to: "home#male"
  get "/female", to: "home#female"
end
