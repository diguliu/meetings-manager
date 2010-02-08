class MeetingParticipantJoinTablesController < ApplicationController
  # GET /meeting_participant_join_tables
  # GET /meeting_participant_join_tables.xml
  def index
    @meeting_participant_join_tables = MeetingParticipantJoinTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meeting_participant_join_tables }
    end
  end

  # GET /meeting_participant_join_tables/1
  # GET /meeting_participant_join_tables/1.xml
  def show
    @meeting_participant_join_table = MeetingParticipantJoinTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meeting_participant_join_table }
    end
  end

  # GET /meeting_participant_join_tables/new
  # GET /meeting_participant_join_tables/new.xml
  def new
    @meeting_participant_join_table = MeetingParticipantJoinTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meeting_participant_join_table }
    end
  end

  # GET /meeting_participant_join_tables/1/edit
  def edit
    @meeting_participant_join_table = MeetingParticipantJoinTable.find(params[:id])
  end

  # POST /meeting_participant_join_tables
  # POST /meeting_participant_join_tables.xml
  def create
    @meeting_participant_join_table = MeetingParticipantJoinTable.new(params[:meeting_participant_join_table])

    respond_to do |format|
      if @meeting_participant_join_table.save
        flash[:notice] = 'MeetingParticipantJoinTable was successfully created.'
        format.html { redirect_to(@meeting_participant_join_table) }
        format.xml  { render :xml => @meeting_participant_join_table, :status => :created, :location => @meeting_participant_join_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meeting_participant_join_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_participant_join_tables/1
  # PUT /meeting_participant_join_tables/1.xml
  def update
    @meeting_participant_join_table = MeetingParticipantJoinTable.find(params[:id])

    respond_to do |format|
      if @meeting_participant_join_table.update_attributes(params[:meeting_participant_join_table])
        flash[:notice] = 'MeetingParticipantJoinTable was successfully updated.'
        format.html { redirect_to(@meeting_participant_join_table) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meeting_participant_join_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_participant_join_tables/1
  # DELETE /meeting_participant_join_tables/1.xml
  def destroy
    @meeting_participant_join_table = MeetingParticipantJoinTable.find(params[:id])
    @meeting_participant_join_table.destroy

    respond_to do |format|
      format.html { redirect_to(meeting_participant_join_tables_url) }
      format.xml  { head :ok }
    end
  end
end
