.class Lcn/nubia/weather/ui/activity/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/HomeActivity;->checkAndRequestPermission()V
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
    .line 195
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$2;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$2;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/HomeActivity;->doUpdate()V

    .line 199
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$2;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/HomeActivity;->doUpgrade()V

    .line 201
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getIsUpdateEnabled()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/HomeActivity$2;->this$0:Lcn/nubia/weather/ui/activity/HomeActivity;

    .line 203
    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "KEY_IS_ALLOW_UPDATE"

    .line 202
    invoke-static {v1, v2, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    .local v0, "isAlreadySetFlag":Z
    const-string v1, "WeatherMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [lijiangfeng] isAlreadySetFlag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->setIsAllowUpdate()V

    .line 211
    .end local v0    # "isAlreadySetFlag":Z
    :cond_0
    return v4
.end method
