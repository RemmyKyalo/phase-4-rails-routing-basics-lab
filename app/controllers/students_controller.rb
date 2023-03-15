class StudentsController < ApplicationController
    def index
        students= Student.all
        render json: students 
    end

    def grades 
        students= Student.all
        render json: students.order(grade: :desc)

    end
    def highest_grade
        highest_student= Student.order(grade: :desc).first
        render json: highest_student

    end
end
