.class Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;
.super Ljava/lang/Object;
.source "CalendarMonthFragment.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthClick(Lcn/nubia/calendar/submodule_year/view/YearView;Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;)V
    .locals 21
    .param p1, "yearView"    # Lcn/nubia/calendar/submodule_year/view/YearView;
    .param p2, "yearViewClickEventModel"    # Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;

    .prologue
    .line 151
    new-instance v8, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 152
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 153
    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    .line 154
    .local v17, "monthday":I
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->getYear()I

    move-result v7

    .line 155
    .local v7, "tmpYear":I
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/calendar/submodule_year/model/YearViewClickEventModel;->getMonth()I

    move-result v6

    .line 156
    .local v6, "month":I
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 157
    .local v1, "temp":Landroid/text/format/Time;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 158
    invoke-static {v1}, Lcn/nubia/calendar/util/Utils;->getDaysOfCurrentMonth(Landroid/text/format/Time;)I

    move-result v12

    .line 159
    .local v12, "maxDay":I
    move/from16 v0, v17

    if-le v0, v12, :cond_1

    .line 160
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/text/format/Time;->set(IIIIII)V

    .line 164
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$200(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$200(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 167
    .local v20, "msg":Landroid/os/Message;
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 169
    .end local v20    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v8

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0
.end method
