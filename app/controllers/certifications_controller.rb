class CertificationsController < ApplicationController
  
  def index
  	@certifications = Certification.all
  end

  
  def new
  	@certification = Certification.new
  end


  def create
  	@certification = Certification.new(certification_params)
  	  if @certification.save
  	  	redirect_to certification_path(@certification)
  	  else
  	  	render 'new'
  	  end
  end


  def show
  	@certification = Certification.find(params[:id])
  end


  def edit
  	@certification = Certification.find(params[:id])
  end


  def update
  	@certification = Certification.find(params[:id])

  	if @certification.update(certification_params)
  	  redirect_to @certification
  	else
  	  render 'edit'
  	end
  end


  def destroy
  	@certification = Certification.find(params[:id])

  	@certification.destroy
  	redirect_to certifications_path

  end

private

  def certification_params
    params.require(:certification).permit(:title, :description)
  end

end
