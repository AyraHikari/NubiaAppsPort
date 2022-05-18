.class Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;
.super Ljava/lang/Object;
.source "BrowserPagNative.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->createContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field appInfo:Lcom/huanju/ssp/base/core/download/bean/AppInfo;

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-gtz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$600(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d..."

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->appInfo:Lcom/huanju/ssp/base/core/download/bean/AppInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->appInfo:Lcom/huanju/ssp/base/core/download/bean/AppInfo;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->appInfo:Lcom/huanju/ssp/base/core/download/bean/AppInfo;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->openApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView \u6253\u5f00 \u5df2\u5b89\u88c5 app--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$600(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$000(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->this$0:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-static {v2, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->access$700(Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;Ljava/lang/String;)Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->downloadWithShow(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 518
    new-instance v1, Lcom/huanju/ssp/base/core/download/bean/AppInfo;

    invoke-direct {v1, p1, p5, p6}, Lcom/huanju/ssp/base/core/download/bean/AppInfo;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$3;->appInfo:Lcom/huanju/ssp/base/core/download/bean/AppInfo;

    goto/16 :goto_0
.end method
