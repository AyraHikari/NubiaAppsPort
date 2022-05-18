.class public Lcn/nubia/deskclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# static fields
.field public static final ALARM_DATA_BEFORE_UPDATE:Ljava/lang/String; = "alarmDataBeforeUptate"

.field private static final TAG:Ljava/lang/String; = "AlarmInitReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmInitReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 40
    .local v0, "result":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcn/nubia/deskclock/AlarmInitReceiver$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcn/nubia/deskclock/AlarmInitReceiver$1;-><init>(Lcn/nubia/deskclock/AlarmInitReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v1}, Lcn/nubia/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
