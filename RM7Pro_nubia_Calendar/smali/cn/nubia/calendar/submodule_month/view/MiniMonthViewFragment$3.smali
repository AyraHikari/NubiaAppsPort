.class Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;
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
    .line 398
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget v2, v2, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mClickedXLocation:F

    .line 403
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v0

    .line 404
    .local v0, "day":Landroid/text/format/Time;
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->onDayTapped(Landroid/text/format/Time;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 410
    .end local v0    # "day":Landroid/text/format/Time;
    :cond_1
    return-void
.end method
