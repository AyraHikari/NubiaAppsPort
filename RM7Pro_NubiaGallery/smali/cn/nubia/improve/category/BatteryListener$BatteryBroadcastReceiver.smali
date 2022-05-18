.class Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/BatteryListener;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/category/BatteryListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/category/BatteryListener;Lcn/nubia/improve/category/BatteryListener$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcn/nubia/improve/category/BatteryListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BatteryListener"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$200(Lcn/nubia/improve/category/BatteryListener;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 76
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1, v2}, Lcn/nubia/improve/category/BatteryListener;->access$202(Lcn/nubia/improve/category/BatteryListener;Z)Z

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "txh ACTION_POWER_DISCONNECTED, mIsPowerConnect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p2}, Lcn/nubia/improve/category/BatteryListener;->access$200(Lcn/nubia/improve/category/BatteryListener;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$300(Lcn/nubia/improve/category/BatteryListener;)Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 81
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$300(Lcn/nubia/improve/category/BatteryListener;)Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;->onStatePowerDisconnected()V

    goto/16 :goto_4

    :cond_2
    :goto_1
    const-string p1, "status"

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v4

    :goto_3
    const-string v3, "plugged"

    .line 61
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_5

    move v2, v4

    .line 63
    :cond_5
    invoke-static {}, Lcn/nubia/improve/category/BatteryListener;->access$100()Z

    move-result p2

    if-eqz p2, :cond_6

    move v2, v4

    .line 68
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "txh ACTION_POWER_CONNECTED, mIsPowerConnect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {v0}, Lcn/nubia/improve/category/BatteryListener;->access$200(Lcn/nubia/improve/category/BatteryListener;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 69
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$200(Lcn/nubia/improve/category/BatteryListener;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 70
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1, v4}, Lcn/nubia/improve/category/BatteryListener;->access$202(Lcn/nubia/improve/category/BatteryListener;Z)Z

    .line 71
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$300(Lcn/nubia/improve/category/BatteryListener;)Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 72
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcn/nubia/improve/category/BatteryListener;

    invoke-static {p1}, Lcn/nubia/improve/category/BatteryListener;->access$300(Lcn/nubia/improve/category/BatteryListener;)Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;->onStatePowerConnected()V

    :cond_7
    :goto_4
    return-void
.end method
