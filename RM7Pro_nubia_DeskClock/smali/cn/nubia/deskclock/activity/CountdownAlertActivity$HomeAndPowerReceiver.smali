.class public Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CountdownAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/CountdownAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeAndPowerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "action":Ljava/lang/String;
    const-string v2, "DeskClock:[CountdownAlertActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [HomeAndPowerReceiver] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ;; flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v4}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$000(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 210
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$100(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V

    .line 234
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "close_countdown_from_menu"

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$000(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 217
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$100(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V

    .line 219
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_4

    .line 220
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$200(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$300(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$202(Lcn/nubia/deskclock/activity/CountdownAlertActivity;Z)Z

    .line 222
    const-string v2, "DeskClock:[CountdownAlertActivity]"

    const-string v3, " from fullscreen_activity come fisrt "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_4
    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->isKeyguard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "DeskClock:[CountdownAlertActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: isKeyguard  flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v4}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$000(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$000(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 228
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->access$100(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V

    goto :goto_0

    .line 231
    :cond_5
    const-string v2, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_COUNTDOWN_ALERT_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;->this$0:Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-virtual {v2}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finish()V

    goto/16 :goto_0
.end method
