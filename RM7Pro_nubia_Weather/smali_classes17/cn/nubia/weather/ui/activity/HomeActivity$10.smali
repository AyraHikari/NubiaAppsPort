.class Lcn/nubia/weather/ui/activity/HomeActivity$10;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->dealWithIntent(Z)V
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
    .line 926
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$10;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/HomeActivity$10;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/HomeActivity;->access$900(Lcn/nubia/weather/ui/activity/HomeActivity;)V

    .line 932
    const/4 v0, 0x0

    return v0
.end method
