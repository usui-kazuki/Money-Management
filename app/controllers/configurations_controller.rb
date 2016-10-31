class ConfigurationsController < ApplicationController
  def index
  end

  def tablereset
  	 Price.delete_all
     Category.delete_all
     Goal.delete_all
     Familyuser.delete_all
     Notice.delete_all
     respond_to do |format|
      format.html { redirect_to configurations_index_path, notice: 'データを全て削除しました。' }
      format.json { head :no_content }
     end
  end
end
