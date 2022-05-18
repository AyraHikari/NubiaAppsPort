.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;
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
    .line 234
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$3;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$400(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$302(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    return-void
.end method
