.class Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownCountTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$1;

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const/4 v8, 0x0

    .line 1027
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3700(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/sdk/AdInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    if-nez v4, :cond_0

    .line 1029
    const-wide/16 v2, 0x0

    .line 1030
    .local v2, "timeBetween":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1031
    .local v0, "lastTime":J
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3800(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4, v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3802(Lcom/huanju/ssp/sdk/normal/SplashAd;J)J

    .line 1037
    :goto_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v5}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3900(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v4, v6, v7}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3902(Lcom/huanju/ssp/sdk/normal/SplashAd;J)J

    .line 1038
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3900(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    .line 1039
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2902(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1040
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4000(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->access$2700(Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;I)Ljava/lang/Runnable;

    .line 1041
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4000(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->run()V

    .line 1048
    .end local v0    # "lastTime":J
    .end local v2    # "timeBetween":J
    :cond_0
    :goto_1
    return-void

    .line 1034
    .restart local v0    # "lastTime":J
    .restart local v2    # "timeBetween":J
    :cond_1
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3800(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 1035
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v4, v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3802(Lcom/huanju/ssp/sdk/normal/SplashAd;J)J

    goto :goto_0

    .line 1044
    :cond_2
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-virtual {v4}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v4

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v4}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1045
    invoke-static {p0, v10, v11}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method
