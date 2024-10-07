class LecturesController < ApplicationController
    def show
        @lecture = Lecture.find(params[:id])
        # ここで必要な処理を行う
      end    
end
