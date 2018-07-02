class PoemsController < ApplicationController
  before_action :set_poem, only: [:show, :edit, :update, :destroy]
  
  def home
  end
    
  def index
    @poems = Poem.all.order('created_at desc')
    @poem = Poem.new
  end
    
  def new
    @poem = Poem.new
  end
    
  def create
    @poem = Poem.new(poem_params)
    if @poem.save
      redirect_to poems_path
    else
      render 'new'
    end        
  end
  
  def edit
  end
  
  def update
    if @poem.update(poem_params)
      redirect_to poems_path
    else
      render 'edit'
    end
  end  
    
  def destroy
    @poem.destroy
    redirect_to poems_path
  end
  
  def confirm
    @poem = Poem.new(poem_params)
    render :new if @poem.invalid?
  end
    
  private
  def poem_params
    params.require(:poem).permit(:content)
  end
    
  def set_poem
    @poem = Poem.find(params[:id])
  end
    
end
