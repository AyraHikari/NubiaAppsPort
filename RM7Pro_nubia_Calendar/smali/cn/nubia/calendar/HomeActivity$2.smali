.class Lcn/nubia/calendar/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->setGoToTime2RefreshWeartherView()V
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
    .line 301
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$2;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "calendar_preset"

    const-string v1, "setGoToTime2RefreshWeartherView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$2;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$100(Lcn/nubia/calendar/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$2;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$100(Lcn/nubia/calendar/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/calendar/HomeActivity$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$2$1;-><init>(Lcn/nubia/calendar/HomeActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_0
    return-void
.end method
