.class Lcom/huanju/ssp/base/core/AdController$9;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/AdController;->toDeeplink(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/AdController;

.field final synthetic val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$appcontext:Landroid/content/Context;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Landroid/content/Context;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/AdController;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$appcontext:Landroid/content/Context;

    iput-object p4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toDeeplink  start ad.bundle\uff1a  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 564
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 565
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_activate:I

    if-ne v6, v4, :cond_1

    .line 566
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/core/AdController;->access$400(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toDeeplink  mContextWeak\uff1a  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 572
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/AdController;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->getInstance(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/download/DownLoadManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/base/core/download/DownLoadManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    :cond_2
    const/4 v0, 0x0

    .line 575
    .local v0, "deepLinkIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 577
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 578
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$appcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 579
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_5

    .line 582
    const-string v4, "isFromNubiaAd"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    const-string v4, "adSlotId"

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v4, "adSource"

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v4, "adInApp"

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v4, "adType"

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    const-string v4, "adContent"

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFromNubiaAd=true adSlotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adSource"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adInApp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 593
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$appcontext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeepLink \u8df3\u8f6c\u6210\u529f   \uff1a  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 595
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 596
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/huanju/ssp/base/core/AdController;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 603
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 611
    .end local v0    # "deepLinkIntent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 612
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/core/AdController;->access$400(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 617
    :cond_4
    iget-object v4, p0, Lcom/huanju/ssp/base/core/AdController$9;->this$0:Lcom/huanju/ssp/base/core/AdController;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$listener:Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;

    invoke-static {v4, v5, v6}, Lcom/huanju/ssp/base/core/AdController;->access$100(Lcom/huanju/ssp/base/core/AdController;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V

    goto/16 :goto_0

    .line 601
    .restart local v0    # "deepLinkIntent":Landroid/content/Intent;
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeepLink NotFound  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 605
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 606
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveInfo is null, DeepLink NotFound  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 607
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v2

    .line 608
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeepLink NotFound  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/AdController$9;->val$ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1
.end method
