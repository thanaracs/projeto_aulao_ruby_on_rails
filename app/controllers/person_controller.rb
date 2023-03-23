class PersonController < ApplicationController
    #AS ROTAS SÃO DEFINIDAS EM PLURAL

    #GET /people
    def index
        @people = Person.all
        respond_to do |format|
        format.html
            format.json { render :json => @people}
            #format.json
            #format.xml
        end
    end

    #GET /people/id
    def show 
        # @person = Person.find(params[:id])
        @person = Person.find(person_params)
        respond_to do |format|
                format.html
        end
    end

    #GET /people/new
    def new
        @person = Person.new
        respond_to do |format|
            format.html
        end
    end

    #POST /people
    def create
        @person = Person.create(person_params)
        respond_to do |format|
            format.html {redirect_to action: 'index'}
        end
    end

    # DELETE /person/1
    def destroy
        @person = Person.find(person_params)
        @person.destroy
            
        respond_to do |format|
            format.html {redirect_to action: 'index'}
    
        end
    end

    private 
        def person_params
            params.require(:person).permit(:person, :name, :age)
        end
end