.class Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;
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
    .line 530
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    iget v2, v2, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mClickedXLocation:F

    .line 535
    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v0

    .line 536
    .local v0, "day":Landroid/text/format/Time;
    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->onDayTapped(Landroid/text/format/Time;)V

    .line 540
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mSingleTapUpView:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .line 542
    .end local v0    # "day":Landroid/text/format/Time;
    :cond_1
    return-void
.end method
