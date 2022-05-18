.class Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 176
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$2;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string v2, "mCurrentAlarmIsNull"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 181
    .local v1, "mCurrentAlarmIsNull":Z
    const-string v2, "AlarmAlertFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v2, "com.nubia.deskclock.ALARM_TOUI_DISMISS"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$2;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$400(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    .line 187
    :cond_2
    return-void
.end method
