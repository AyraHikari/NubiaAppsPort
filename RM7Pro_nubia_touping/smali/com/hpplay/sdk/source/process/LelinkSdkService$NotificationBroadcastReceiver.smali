.class public Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSdkService;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 715
    const-string v0, "NotificationBroadcastReceiver"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->j(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/protocol/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->j(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/protocol/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/c;->d()V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$NotificationBroadcastReceiver;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->i(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V

    .line 720
    return-void
.end method
