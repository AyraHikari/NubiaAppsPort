.class Lcn/nubia/upgrade/service/UpgradeService$1;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/service/UpgradeService;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/service/UpgradeService;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeService$1;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$1;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$000(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService$1;->this$0:Lcn/nubia/upgrade/service/UpgradeService;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeService;->access$000(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->pauseDownload()V

    .line 97
    :cond_0
    return-void
.end method
