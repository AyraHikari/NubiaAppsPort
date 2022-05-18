.class Lcn/nubia/calendar/EventInfoFragment$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 525
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 526
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 531
    if-nez p3, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-virtual {v2}, Lcn/nubia/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 535
    .local v10, "activity":Landroid/app/Activity;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 540
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 632
    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcn/nubia/calendar/EventInfoFragment;->access$1700(Lcn/nubia/calendar/EventInfoFragment;I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$2300(Lcn/nubia/calendar/EventInfoFragment;)I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 640
    const-wide/16 v2, 0x258

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v4}, Lcn/nubia/calendar/EventInfoFragment;->access$400(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v18

    sub-long v6, v6, v18

    sub-long v16, v2, v6

    .line 642
    .local v16, "timeDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_5

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 646
    .end local v16    # "timeDiff":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 647
    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$2400(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 542
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$802(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$900(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 548
    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 551
    :cond_6
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcn/nubia/calendar/EventInfoFragment$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler$1;-><init>(Lcn/nubia/calendar/EventInfoFragment$QueryHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1000(Lcn/nubia/calendar/EventInfoFragment;)V

    .line 561
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 562
    .local v5, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$800(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x4

    .line 563
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 562
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 564
    .local v8, "args":[Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v6, Lcn/nubia/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 569
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1102(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1200(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1300(Lcn/nubia/calendar/EventInfoFragment;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1400(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 575
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 578
    .restart local v8    # "args":[Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 579
    .restart local v5    # "uri":Landroid/net/Uri;
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 580
    invoke-static {}, Lcn/nubia/calendar/EventInfoFragment;->access$1600()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const-string v9, "attendeeName ASC, attendeeEmail ASC"

    move-object/from16 v2, p0

    .line 579
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1800(Lcn/nubia/calendar/EventInfoFragment;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 587
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 588
    .restart local v8    # "args":[Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 589
    .restart local v5    # "uri":Landroid/net/Uri;
    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 590
    invoke-static {}, Lcn/nubia/calendar/EventInfoFragment;->access$1900()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "event_id=?"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 589
    invoke-virtual/range {v2 .. v9}, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 583
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "args":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1700(Lcn/nubia/calendar/EventInfoFragment;I)V

    goto :goto_2

    .line 592
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$1700(Lcn/nubia/calendar/EventInfoFragment;I)V

    goto/16 :goto_1

    .line 597
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$2002(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$2100(Lcn/nubia/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->updateResponse(Landroid/view/View;)V

    goto/16 :goto_1

    .line 602
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/EventInfoFragment;->access$2202(Lcn/nubia/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$600(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v4}, Lcn/nubia/calendar/EventInfoFragment;->access$2200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/EventInfoFragment;->initReminders(Landroid/view/View;Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 606
    :sswitch_4
    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 607
    .local v14, "res":Landroid/content/res/Resources;
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 610
    .local v15, "sb":Landroid/text/SpannableStringBuilder;
    const v2, 0x7f0c0098

    .line 611
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 612
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 613
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v15, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    .line 618
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 619
    .local v11, "calendarName":Ljava/lang/String;
    invoke-virtual {v15, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$1100(Lcn/nubia/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x2

    .line 624
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 625
    .local v12, "email":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 626
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 627
    const-string v2, " ("

    invoke-virtual {v15, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 650
    .end local v11    # "calendarName":Ljava/lang/String;
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "label":Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$300(Lcn/nubia/calendar/EventInfoFragment;)Landroid/widget/ScrollView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setAlpha(F)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/EventInfoFragment$QueryHandler;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$500(Lcn/nubia/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
