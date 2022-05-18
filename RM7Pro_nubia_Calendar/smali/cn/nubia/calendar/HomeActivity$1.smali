.class Lcn/nubia/calendar/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->refreshMonthView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$1;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$1;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$1;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    .line 290
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$1;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    .line 292
    :cond_0
    return-void
.end method
