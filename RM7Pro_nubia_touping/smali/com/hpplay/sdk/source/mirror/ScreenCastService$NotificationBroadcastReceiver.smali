.class public Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 517
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 518
    const-string v1, "ScreenCastService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v1, "notification_clicked_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    :try_start_0
    const-string v0, "ScreenCastService"

    const-string v1, "--------------->>> start open act"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.touping"

    const-string v3, "cn.nubia.touping.HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 525
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    const-string v1, "ScreenCastService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_1
    const-string v1, "notification_disconnect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f()V

    goto :goto_0
.end method
