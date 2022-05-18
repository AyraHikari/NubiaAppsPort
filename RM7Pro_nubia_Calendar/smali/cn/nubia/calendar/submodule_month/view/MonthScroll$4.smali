.class Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;
.super Ljava/lang/Object;
.source "MonthScroll.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_month/view/MonthScroll;->initMonthView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 251
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshPage()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$4;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$200(Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->access$500(Lcn/nubia/calendar/submodule_month/view/MonthScroll;Landroid/text/format/Time;)V

    .line 257
    return-void
.end method
