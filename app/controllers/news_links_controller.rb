class NewsLinksController < ApplicationController
  # GET /news_links
  # GET /news_links.xml
  def index
    @news_links = NewsLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @news_links }
    end
  end

  # GET /news_links/1
  # GET /news_links/1.xml
  def show
    @news_link = NewsLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @news_link }
    end
  end

  # GET /news_links/new
  # GET /news_links/new.xml
  def new
    @news_link = NewsLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @news_link }
    end
  end

  # GET /news_links/1/edit
  def edit
    @news_link = NewsLink.find(params[:id])
  end

  # POST /news_links
  # POST /news_links.xml
  def create
    @news_link = NewsLink.new(params[:news_link])

    respond_to do |format|
      if @news_link.save
        format.html { redirect_to(@news_link, :notice => 'News link was successfully created.') }
        format.xml  { render :xml => @news_link, :status => :created, :location => @news_link }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @news_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /news_links/1
  # PUT /news_links/1.xml
  def update
    @news_link = NewsLink.find(params[:id])

    respond_to do |format|
      if @news_link.update_attributes(params[:news_link])
        format.html { redirect_to(@news_link, :notice => 'News link was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @news_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /news_links/1
  # DELETE /news_links/1.xml
  def destroy
    @news_link = NewsLink.find(params[:id])
    @news_link.destroy

    respond_to do |format|
      format.html { redirect_to(news_links_url) }
      format.xml  { head :ok }
    end
  end
end
