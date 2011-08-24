class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  # PUT /users/destroy_via_put/1
  # This helps me delete users with no JavaScript in View.
  # I use form_for instead.
  def destroy_via_put
    destroy
  end

  # PUT /users/target_via_put/1?target_id=2
  # Makes user1 target user2
  def target_via_put
    @user = User.find(params[:id])
    unless @user.blank?
      @target = User.find(params[:target_id])
      @user.targets << @target unless @target.blank?
    end
    render :action => "show"
  end

  # PUT /users/un_target_via_put/1?target_id=2
  # Makes user1 un-target user2
  def un_target_via_put
    @user = User.find(params[:id])
    unless @user.blank?
      @target = User.find(params[:target_id])
      (@user.targets = @user.targets - [@target]) unless @target.blank?
    end
    render :action => "show"
  end

end
