class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    binding.pry
    @ticket = Ticket.new(ticket_params)
    
    if @ticket.save
      redirect_to tickets_path
    else
      render :new
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    
    if @ticket.update(ticket_params)
      redirect_to ticket_path(@ticket)
    else
      render :edit
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to tickets_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :body, :status, :project_id, :user_id)
  end
end
