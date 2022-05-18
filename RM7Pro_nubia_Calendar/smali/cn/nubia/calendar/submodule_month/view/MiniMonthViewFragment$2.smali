.class Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;
.super Ljava/lang/Object;
.source "MiniMonthViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .prologue
    .line 357
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 360
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->invalidateClickedMonthView()V

    .line 362
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget v4, v4, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedXLocation:F

    invoke-static {v2, v3, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$300(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;F)Landroid/text/format/Time;

    move-result-object v1

    .line 363
    .local v1, "time":Landroid/text/format/Time;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getmMonthViewCurrentMonth()I

    move-result v2

    iget v3, v1, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_3

    .line 364
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v3, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    monitor-enter v3

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "holidayView":Landroid/widget/TextView;
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getmChineseHoliday()Landroid/widget/TextView;

    move-result-object v0

    .line 369
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v2, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$502(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 370
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getmChineseHoliday()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .line 372
    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getWeatherViewContainer()Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    move-result-object v5

    .line 371
    invoke-virtual {v2, v1, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 376
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iput-object v6, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 392
    .end local v0    # "holidayView":Landroid/widget/TextView;
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$200(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 394
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_1
    return-void

    .line 374
    .restart local v0    # "holidayView":Landroid/widget/TextView;
    .restart local v1    # "time":Landroid/text/format/Time;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 380
    .end local v0    # "holidayView":Landroid/widget/TextView;
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->setmMonthViewCurrentMonth(I)V

    .line 381
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v3, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    monitor-enter v3

    .line 382
    :try_start_2
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v2, v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$502(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 383
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getmChineseHoliday()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .line 385
    invoke-static {v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$400(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/submodule_month/view/MyListView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/submodule_month/view/MyListView;->getWeatherViewContainer()Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;

    move-result-object v5

    .line 384
    invoke-virtual {v2, v1, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    .line 389
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iput-object v6, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    goto :goto_1

    .line 387
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$2;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->setClickedDay(Landroid/text/format/Time;Landroid/widget/TextView;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;)V

    goto :goto_2

    .line 389
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
