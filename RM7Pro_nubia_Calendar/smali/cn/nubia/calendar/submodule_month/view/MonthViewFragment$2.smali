.class Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;
.super Ljava/lang/Object;
.source "MonthViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    .prologue
    .line 480
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 483
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-nez v5, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->invalidateClickedMonthView()V

    .line 487
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v6, v6, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget v7, v7, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    invoke-static {v5, v6, v7}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$300(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;

    move-result-object v3

    .line 488
    .local v3, "time":Landroid/text/format/Time;
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/text/format/Time;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 489
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 491
    :cond_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonthViewCurrentMonth()I

    move-result v5

    iget v6, v3, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_0

    .line 492
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v6, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    monitor-enter v6

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "holidayView":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 495
    .local v4, "viewContainer":Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;
    :try_start_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 496
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getmChineseHoliday()Landroid/widget/TextView;

    move-result-object v0

    .line 497
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$500(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getWeatherViewContainer()Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    move-result-object v4

    .line 499
    :cond_3
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget v7, v7, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    invoke-virtual {v5, v7, v0, v4}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setClickedDay(FLandroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 501
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v5, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget v7, v7, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    .line 502
    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayIndexFromLocation(F)I

    move-result v1

    .line 503
    .local v1, "index":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v7}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$600(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7, v3, v1}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->resetLineNumSlideto(Ljava/util/ArrayList;Landroid/text/format/Time;I)I

    move-result v2

    .line 505
    .local v2, "resetLineNum":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$700(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->initLists(I)V

    .line 506
    if-nez v2, :cond_5

    .line 507
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    .line 519
    :cond_4
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    const/4 v6, 0x0

    iput-object v6, v5, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 523
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v8}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto/16 :goto_0

    .line 508
    :cond_5
    if-ne v2, v8, :cond_6

    .line 509
    :try_start_1
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const/high16 v7, 0x43190000    # 153.0f

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 519
    .end local v1    # "index":I
    .end local v2    # "resetLineNum":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 510
    .restart local v1    # "index":I
    .restart local v2    # "resetLineNum":I
    :cond_6
    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 511
    :try_start_2
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const/high16 v7, 0x43990000    # 306.0f

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 512
    :cond_7
    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    .line 513
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const v7, 0x43e58000    # 459.0f

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 514
    :cond_8
    const/4 v5, 0x4

    if-ne v2, v5, :cond_9

    .line 515
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const/high16 v7, 0x44190000    # 612.0f

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V

    goto :goto_1

    .line 516
    :cond_9
    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    .line 517
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->access$800(Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    move-result-object v5

    const v7, 0x443f4000    # 765.0f

    invoke-virtual {v5, v7}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->setTanHeight(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
