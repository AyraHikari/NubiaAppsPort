.class Lcn/nubia/weather/ui/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/HomeActivity;

    .prologue
    .line 433
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$4;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$4;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->doUpgrade()V

    .line 437
    const/4 v0, 0x0

    return v0
.end method
