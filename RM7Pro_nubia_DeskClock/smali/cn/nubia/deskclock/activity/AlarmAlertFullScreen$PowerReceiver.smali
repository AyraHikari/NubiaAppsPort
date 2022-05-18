.class public Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 732
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AlarmAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [PowerReceiver] action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$1400(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    .line 740
    :cond_0
    return-void
.end method
