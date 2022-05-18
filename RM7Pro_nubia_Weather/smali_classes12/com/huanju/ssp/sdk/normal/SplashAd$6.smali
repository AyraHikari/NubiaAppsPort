.class Lcom/huanju/ssp/sdk/normal/SplashAd$6;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->fetchBdSplashAD(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

.field final synthetic val$adPlaceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->val$adPlaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 331
    invoke-static {v5}, Lcom/baidu/mobads/AdSettings;->setSupportHttps(Z)V

    .line 337
    new-instance v3, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$6$1;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd$6;)V

    .line 395
    .local v3, "listener":Lcom/baidu/mobads/SplashLpCloseListener;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mobads/AdSettings;->setSupportHttps(Z)V

    .line 400
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$1900(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobads/SplashAd;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++fetchBdSplashAD adPlaceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->val$adPlaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2000(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    .line 404
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/huanju/ssp/sdk/normal/SplashAd;->mBdContentView:Landroid/view/ViewGroup;

    .line 405
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    new-instance v0, Lcom/baidu/mobads/SplashAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2100(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v2, v2, Lcom/huanju/ssp/sdk/normal/SplashAd;->mBdContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$6;->val$adPlaceId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/SplashAd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/SplashAdListener;Ljava/lang/String;Z)V

    iput-object v0, v6, Lcom/huanju/ssp/sdk/normal/SplashAd;->mBdSplashAd:Lcom/baidu/mobads/SplashAd;

    .line 408
    return-void
.end method
