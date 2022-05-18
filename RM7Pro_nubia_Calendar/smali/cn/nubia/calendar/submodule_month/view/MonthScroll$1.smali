.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 179
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTempTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 184
    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$100(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Ljava/lang/Runnable;

    move-result-object v3

    .line 183
    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 186
    :cond_0
    return-void
.end method
