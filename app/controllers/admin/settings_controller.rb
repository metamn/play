class Admin::SettingsController < ApplicationController
  # GET /admin/settings
  # GET /admin/settings.xml
  def index
    @admin_settings = Admin::Setting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_settings }
    end
  end

  # GET /admin/settings/1
  # GET /admin/settings/1.xml
  def show
    @admin_setting = Admin::Setting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_setting }
    end
  end

  # GET /admin/settings/new
  # GET /admin/settings/new.xml
  def new
    @admin_setting = Admin::Setting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_setting }
    end
  end

  # GET /admin/settings/1/edit
  def edit
    @admin_setting = Admin::Setting.find(params[:id])
  end

  # POST /admin/settings
  # POST /admin/settings.xml
  def create
    @admin_setting = Admin::Setting.new(params[:admin_setting])

    respond_to do |format|
      if @admin_setting.save
        format.html { redirect_to(@admin_setting, :notice => 'Setting was successfully created.') }
        format.xml  { render :xml => @admin_setting, :status => :created, :location => @admin_setting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/settings/1
  # PUT /admin/settings/1.xml
  def update
    @admin_setting = Admin::Setting.find(params[:id])

    respond_to do |format|
      if @admin_setting.update_attributes(params[:admin_setting])
        format.html { redirect_to(@admin_setting, :notice => 'Setting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/settings/1
  # DELETE /admin/settings/1.xml
  def destroy
    @admin_setting = Admin::Setting.find(params[:id])
    @admin_setting.destroy

    respond_to do |format|
      format.html { redirect_to(admin_settings_url) }
      format.xml  { head :ok }
    end
  end
end
