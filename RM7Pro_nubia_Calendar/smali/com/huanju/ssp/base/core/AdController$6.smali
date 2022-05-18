.class Lcom/huanju/ssp/base/core/AdController$6;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$clkurl2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$6;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$clkurl2:Ljava/lang/String;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 356
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$6;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v2

    const-string v3, "cn.nubia.browser"

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "cn.nubia.browser"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$clkurl2:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$6;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 364
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 366
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$6;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u8df3\u8f6c\u7cfb\u7edf\u6d4f\u89c8\u5668 \u5931\u8d25"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 371
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 372
    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    if-eq v2, v3, :cond_1

    .line 373
    iget-object v2, p0, Lcom/huanju/ssp/base/core/AdController$6;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$6;->val$clkurl2:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/huanju/ssp/base/core/AdController;->access$200(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Ljava/lang/String;Z)V

    goto :goto_0
.end method
