.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;
.super Landroid/database/ContentObserver;
.source "MonthScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;->getContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 612
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 620
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 621
    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    iget v1, v1, Landroid/text/format/Time;->month:I

    sget v2, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->mMonthViewCurMonth:I

    if-ne v1, v2, :cond_0

    .line 622
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1800(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$8;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 623
    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$1700(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 622
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/deftui/MonthViewManager;->get(I)Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;

    move-result-object v0

    .line 624
    .local v0, "mf":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;->agendRefresh()V

    .line 628
    .end local v0    # "mf":Lcn/nubia/calendar/submodule_month/view/MonthViewFragment;
    :cond_0
    return-void
.end method
