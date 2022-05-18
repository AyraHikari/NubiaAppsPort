.class Lcom/huanju/ssp/base/core/AdController$17;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->createDownloadItem(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;ILjava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 1008
    return-void
.end method

.method public onDownloadStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 1014
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onDownloadStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 1017
    :cond_0
    return-void
.end method

.method public onDownloaded(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 1023
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onDownloaded(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 1026
    :cond_0
    return-void
.end method

.method public onInstalled(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 1032
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;->onInstalled(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 1035
    :cond_0
    return-void
.end method

.method public onOpened(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/huanju/ssp/base/core/AdController$17;->this$0:Lcom/huanju/ssp/base/core/AdController;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/core/AdController;->access$600(Lcom/huanju/ssp/base/core/AdController;I)V

    .line 1040
    return-void
.end method
