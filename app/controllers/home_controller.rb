class HomeController < ApplicationController
  def index
  end

  def update
    # Логика обновления (для примера, просто устанавливаем флэш-сообщение)
    flash[:notice] = "Update action was called"
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace("notice", partial: "shared/notice") }
      format.html { redirect_to root_path }
    end
  end
end
