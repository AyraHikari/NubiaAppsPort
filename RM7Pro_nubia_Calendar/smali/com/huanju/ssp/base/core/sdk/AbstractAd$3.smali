.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd;->checkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checktime:I

.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iput-wide p2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->checktime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x5

    const/4 v6, 0x0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkView checktime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->checktime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mAdInfo.isShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v3, v3, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 362
    iget v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->checktime:I

    if-le v2, v8, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v2, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    if-eqz v2, :cond_5

    .line 363
    :cond_0
    iget v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->checktime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->checktime:I

    .line 364
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v2, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$000(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$000(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$100(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V

    .line 366
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v2, v3, v6}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 396
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v3, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->val$time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->val$time:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 373
    const-wide/16 v2, 0x1f4

    invoke-static {p0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v2, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->mAttach:Z

    if-nez v2, :cond_4

    .line 376
    const-string v1, "3\u79d2\u5185\u6ca1\u6709\u88ab\u52a0\u8f7d\u5230\u7236\u5e03\u5c40\u4e2d"

    .line 377
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v6, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 378
    const-string v2, "3\u79d2\u5185\u6ca1\u6709\u88ab\u52a0\u8f7d\u5230\u7236\u5e03\u5c40\u4e2d"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$200(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V

    .line 380
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v2, v1, v7}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdError(Ljava/lang/String;I)V

    goto :goto_0

    .line 383
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    const-string v1, "\u5e7f\u544a\u88ab\u906e\u6321"

    .line 384
    .restart local v1    # "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v6, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 385
    const-string v2, "\u5e7f\u544a\u88ab\u906e\u6321"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$300(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "extra":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const-string v4, "\u5c55\u793a\u672a\u8d85\u8fc750%"

    invoke-virtual {v2, v3, v8, v4, v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    const-string v2, "checkView \u5e7f\u544a\u5c55\u73b0\u5931\u8d25"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u5c55\u73b0\u5931\u8d25 mAdInfo.isShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v3, v3, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .restart local v1    # "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v2, v1, v7}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdError(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
