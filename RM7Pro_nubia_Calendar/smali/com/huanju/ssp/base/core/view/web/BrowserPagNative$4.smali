.class Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;
.super Ljava/lang/Object;
.source "BrowserPagNative.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createDownloadItem(Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->val$url:Ljava/lang/String;

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
    .line 535
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$600(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public onDownloadStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 540
    return-void
.end method

.method public onDownloaded(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$600(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public onInstalled(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 549
    return-void
.end method

.method public onOpened(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 553
    return-void
.end method
