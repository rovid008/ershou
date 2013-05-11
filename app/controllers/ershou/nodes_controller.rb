require_dependency "ershou/application_controller"

module Ershou
  class NodesController < ApplicationController

    def show
      @node = Node.find(params[:id])
      @topics = @node.topics.where(:state => :open).page(params[:page]).decorate

      render 'ershou/topics/index'
    end

  end
end
