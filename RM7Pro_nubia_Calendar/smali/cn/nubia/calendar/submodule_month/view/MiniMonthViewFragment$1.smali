.class Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;
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
    .line 135
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$000(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$200(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$000(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment$1;->this$0:Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;

    .line 140
    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;->access$100(Lcn/nubia/calendar/submodule_month/view/MiniMonthViewFragment;)Ljava/lang/Runnable;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method
