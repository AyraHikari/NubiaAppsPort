.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 204
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 205
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 206
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 47
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 211
    if-nez p3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v33

    .line 218
    .local v33, "activity":Landroid/app/Activity;
    if-eqz v33, :cond_2

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 222
    :cond_3
    const-wide/16 v38, -0x1

    .line 223
    .local v38, "eventId":J
    sparse-switch p1, :sswitch_data_0

    .line 437
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    :sswitch_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 228
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->setDoneCode(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 236
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    new-instance v5, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v5}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    iput-object v5, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 240
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v12, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    cmp-long v4, v8, v12

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)J

    move-result-wide v8

    iput-wide v8, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v38, v0

    .line 254
    sget-object v7, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 255
    .local v7, "customUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 257
    .local v10, "cusWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    const/16 v5, 0x10

    sget-object v8, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->CUSTOM_EVENT_PROJECTION:[Ljava/lang/String;

    const-string v9, "event_id=?"

    const/4 v11, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v11}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v4, :cond_6

    const-wide/16 v4, -0x1

    cmp-long v4, v38, v4

    if-eqz v4, :cond_6

    .line 265
    sget-object v14, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    .local v14, "attUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 267
    .local v17, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v11, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    const/4 v12, 0x2

    const/4 v13, 0x0

    sget-object v15, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v16, "event_id=? AND attendeeEmail IS NOT NULL"

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v14    # "attUri":Landroid/net/Uri;
    .end local v17    # "whereArgs":[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    if-eqz v4, :cond_7

    .line 277
    sget-object v21, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 278
    .local v21, "rUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v24, v4

    .line 279
    .local v24, "remArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x0

    sget-object v22, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v23, "event_id=?"

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v21    # "rUri":Landroid/net/Uri;
    .end local v24    # "remArgs":[Ljava/lang/String;
    :goto_3
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v8, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    .line 290
    .local v31, "selArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHandler:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    const/16 v27, 0x0

    sget-object v28, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v29, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v30, "_id=?"

    const/16 v32, 0x0

    invoke-virtual/range {v25 .. v32}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto/16 :goto_0

    .line 247
    .end local v7    # "customUri":Landroid/net/Uri;
    .end local v10    # "cusWhereArgs":[Ljava/lang/String;
    .end local v31    # "selArgs":[Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 272
    .restart local v7    # "customUri":Landroid/net/Uri;
    .restart local v10    # "cusWhereArgs":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto :goto_2

    .line 284
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto :goto_3

    .line 305
    .end local v7    # "customUri":Landroid/net/Uri;
    .end local v10    # "cusWhereArgs":[Ljava/lang/String;
    :goto_4
    :sswitch_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 306
    const/4 v4, 0x1

    .line 307
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 308
    .local v42, "name":Ljava/lang/String;
    const/4 v4, 0x2

    .line 309
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 310
    .local v36, "email":Ljava/lang/String;
    const/4 v4, 0x4

    .line 311
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 312
    .local v46, "status":I
    const/4 v4, 0x3

    .line 313
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 314
    .local v45, "relationship":I
    const/4 v4, 0x2

    move/from16 v0, v45

    if-ne v0, v4, :cond_9

    .line 315
    if-eqz v36, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v36

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 318
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v36

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 321
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    .line 324
    :cond_8
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v5, v5, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v5, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 333
    :cond_9
    :goto_5
    if-eqz v36, :cond_c

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 336
    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 337
    const/4 v4, 0x0

    .line 338
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 339
    .local v35, "attendeeId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move/from16 v0, v35

    iput v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move/from16 v0, v46

    iput v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move/from16 v0, v35

    iput v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move/from16 v0, v46

    iput v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 352
    .end local v35    # "attendeeId":I
    .end local v36    # "email":Ljava/lang/String;
    .end local v42    # "name":Ljava/lang/String;
    .end local v45    # "relationship":I
    .end local v46    # "status":I
    :catchall_0
    move-exception v4

    if-eqz p3, :cond_a

    .line 353
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 354
    const/16 p3, 0x0

    .line 356
    :cond_a
    throw v4

    .line 328
    .restart local v36    # "email":Ljava/lang/String;
    .restart local v42    # "name":Ljava/lang/String;
    .restart local v45    # "relationship":I
    .restart local v46    # "status":I
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v42

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v42

    iput-object v0, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    goto :goto_5

    .line 346
    :cond_c
    new-instance v34, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v34, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    move/from16 v0, v46

    move-object/from16 v1, v34

    iput v0, v1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/model/CalendarEventModel;->addAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcn/nubia/calendar/model/CalendarEventModel;->addAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 352
    .end local v34    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .end local v36    # "email":Ljava/lang/String;
    .end local v42    # "name":Ljava/lang/String;
    .end local v45    # "relationship":I
    .end local v46    # "status":I
    :cond_d
    if-eqz p3, :cond_e

    .line 353
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 354
    const/16 p3, 0x0

    .line 357
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto/16 :goto_0

    .line 362
    :goto_6
    :sswitch_2
    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 363
    const/4 v4, 0x1

    .line 364
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 365
    .local v41, "minutes":I
    const/4 v4, 0x2

    .line 366
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 368
    .local v40, "method":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-static {v0, v4, v5, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->queryReminderPhoneNumbers(Landroid/app/Activity;JI)Ljava/lang/String;

    move-result-object v43

    .line 370
    .local v43, "phoneNumbers":Ljava/lang/String;
    const/16 v44, 0x0

    .line 371
    .local v44, "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 372
    move/from16 v0, v41

    move/from16 v1, v40

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(IILjava/lang/String;)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v44

    .line 377
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 385
    .end local v40    # "method":I
    .end local v41    # "minutes":I
    .end local v43    # "phoneNumbers":Ljava/lang/String;
    .end local v44    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :catchall_1
    move-exception v4

    if-eqz p3, :cond_f

    .line 386
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 387
    const/16 p3, 0x0

    .line 389
    :cond_f
    throw v4

    .line 375
    .restart local v40    # "method":I
    .restart local v41    # "minutes":I
    .restart local v43    # "phoneNumbers":Ljava/lang/String;
    .restart local v44    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_10
    :try_start_3
    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v44

    goto :goto_7

    .line 382
    .end local v40    # "method":I
    .end local v41    # "minutes":I
    .end local v43    # "phoneNumbers":Ljava/lang/String;
    .end local v44    # "re":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    if-eqz p3, :cond_12

    .line 386
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 387
    const/16 p3, 0x0

    .line 390
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto/16 :goto_0

    .line 395
    :sswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, v4, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_15

    .line 399
    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v37

    .line 404
    .local v37, "matrixCursor":Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v5, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 405
    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    .line 404
    :goto_8
    move-object/from16 v0, v37

    invoke-virtual {v5, v0, v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 414
    .end local v37    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_9
    if-eqz p3, :cond_13

    .line 415
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 416
    const/16 p3, 0x0

    .line 420
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto/16 :goto_0

    .line 405
    .restart local v37    # "matrixCursor":Landroid/database/MatrixCursor;
    :cond_14
    const/4 v4, 0x0

    goto :goto_8

    .line 408
    .end local v37    # "matrixCursor":Landroid/database/MatrixCursor;
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCalendarCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCalendarCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    .line 414
    :catchall_2
    move-exception v4

    if-eqz p3, :cond_16

    .line 415
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 416
    const/16 p3, 0x0

    .line 418
    :cond_16
    throw v4

    .line 425
    :sswitch_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setCustomModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setCustomModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 429
    if-eqz p3, :cond_17

    .line 430
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 431
    const/16 p3, 0x0

    .line 434
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;I)V

    goto/16 :goto_0

    .line 429
    :catchall_3
    move-exception v4

    if-eqz p3, :cond_18

    .line 430
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 431
    const/16 p3, 0x0

    .line 433
    :cond_18
    throw v4

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
