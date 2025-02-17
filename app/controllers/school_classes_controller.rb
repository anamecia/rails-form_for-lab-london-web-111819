class SchoolClassesController < ApplicationController 

    def index
        @school_classes = SchoolClass.all
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end 

    def new 
        @school_class = SchoolClass.new
        @submit_button = "Create School Class"
    end 

    def create
        school_class = SchoolClass.create(post_params(:title, :number_room))

        redirect_to school_class_path(school_class)
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update 
        school_class = SchoolClass.update(post_params(:title, :number_room))

        redirect_to school_class_path(school_class)
    end 
    

    private 

    def post_params(*args)
        params.require(:school_class).permit(*args)
    end 
end 