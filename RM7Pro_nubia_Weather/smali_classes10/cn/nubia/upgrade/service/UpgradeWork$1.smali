.class Lcn/nubia/upgrade/service/UpgradeWork$1;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/UpgradeWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork$1;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$1;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    .line 86
    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$000(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$1;->this$0:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->access$000(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->pauseDownload()V

    .line 89
    :cond_0
    return-void
.end method
