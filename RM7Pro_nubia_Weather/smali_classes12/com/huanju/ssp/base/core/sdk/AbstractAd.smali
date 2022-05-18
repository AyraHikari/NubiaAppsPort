.class public abstract Lcom/huanju/ssp/base/core/sdk/AbstractAd;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    }
.end annotation


# instance fields
.field protected endReqAd:J

.field protected isClosed:Z

.field protected mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field protected mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

.field protected mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

.field protected mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

.field private mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

.field protected mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mErrImpTime:[J

.field public mErrImpUrl:Ljava/lang/String;

.field protected mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

.field protected mIsCarousel:Z

.field protected mIsCountControl:Z

.field protected mIsSspClick:Z

.field protected mResId:I

.field protected startReqAd:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "adSlotId"    # Ljava/lang/String;
    .param p5, "adType"    # Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .param p6, "keyword"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsCarousel:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    .line 68
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->startReqAd:J

    .line 69
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->endReqAd:J

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isClosed:Z

    .line 72
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsCountControl:Z

    .line 73
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsSspClick:Z

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    .line 83
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 88
    :goto_0
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/sdk/AdInfo;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    .line 89
    new-instance v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    .line 90
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    .line 91
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getAdControl(Ljava/lang/ref/WeakReference;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    .line 92
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 75
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->reportErrImp()V

    return-void
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 432
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "TYPE_REQ_CONNET_START"

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 435
    const-string v3, "TYPE_REQ_CONNET_END"

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 436
    const-string v3, "TYPE_REQ_READ_RESULT_START"

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 437
    const-string v3, "TYPE_REQ_READ_RESULT_END"

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 438
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v3, :cond_0

    .line 439
    const-string v3, "TIME_OUT_TIME"

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    if-eqz v3, :cond_1

    .line 442
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getErrImpTime()[J

    move-result-object v1

    .line 443
    .local v1, "errTime":[J
    const-string v3, "TYPE_DOWN_CONNET_START"

    const/4 v4, 0x4

    aget-wide v4, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 444
    const-string v3, "TYPE_DOWN_CONNET_END"

    const/4 v4, 0x5

    aget-wide v4, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 445
    const-string v3, "TYPE_DOWN_WRITE_START"

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 446
    const-string v3, "TYPE_DOWN_WRITE_END"

    const/4 v4, 0x7

    aget-wide v4, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "errTime":[J
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private reportErrImp()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    .line 414
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getErrImpTime()[J

    move-result-object v0

    .line 421
    .local v0, "downErrTime":[J
    const/4 v1, 0x5

    aget-wide v2, v0, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 422
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const-string v3, "\u4e0b\u8f7d\u8d44\u6e90\u8d85\u65f6,\u8fde\u63a5\u8d85\u65f6"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_2
    const/4 v1, 0x7

    aget-wide v2, v0, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 424
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const-string v3, "\u4e0b\u8f7d\u8d44\u6e90\u8d85\u65f6,\u8fde\u63a5\u8bfb\u5199\u6d41\u8d85\u65f6"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "\u5c55\u793a\u8d85\u65f6"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportReqErrImp()V
    .locals 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "\u8bf7\u6c42\u5e7f\u544a\u8d85\u65f6"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDefaultAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 6
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 188
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsCarousel:Z

    iput-boolean v4, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    .line 189
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 190
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    .line 191
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 194
    .local v2, "renderStart":J
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    if-nez v4, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u6253\u5e95\u6e32\u67d3\u5931\u8d25\uff0ccreateType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n ImgUrl : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v1, v1, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShowNow:Z

    if-nez v1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReady()V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$1;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkView()V
    .locals 3

    .prologue
    .line 320
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    if-nez v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, "time":J
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$3;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;J)V

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected closeView(I)V
    .locals 1
    .param p1, "closeType"    # I

    .prologue
    .line 479
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;I)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method protected abstract createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
.end method

.method public declared-synchronized getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdView:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getDefaultImg()Ljava/lang/String;
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 310
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isViewCovered(Landroid/view/View;F)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shieldRate"    # F

    .prologue
    .line 463
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method protected abstract onAdClose(I)V
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->closeView(I)V

    .line 159
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->reportReqErrImp()V

    .line 162
    :cond_0
    const/4 v2, -0x5

    if-ne p2, v2, :cond_1

    .line 164
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "\u5c55\u793a\u672a\u8d85\u8fc750%"

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getDefaultImg()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "defaultImg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultImg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string v2, "no default img"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_2
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;-><init>()V

    .line 177
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    iput-object v1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    .line 178
    const/4 v2, 0x5

    iput v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    .line 179
    const/4 v2, 0x3

    iput v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    .line 180
    const-string v2, "http://ui.nubia.cn/app/detail/5"

    iput-object v2, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 183
    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->showDefaultAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto :goto_0
.end method

.method public onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 11
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAdReach "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->endReqAd:J

    .line 233
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->reqAdSuccess()V

    .line 234
    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isClosed:Z

    if-eqz v4, :cond_0

    .line 235
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/16 v6, 0x8

    const-string v7, "\u8bf7\u6c42\u5e7f\u544a\u8d85\u65f6(autotime)"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsCarousel:Z

    iput-boolean v5, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    .line 239
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 240
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    aget v5, v5, v9

    iput v5, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    .line 241
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    aget v5, v5, v8

    iput v5, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "renderStart":J
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->checkView()V

    .line 246
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v5, v6}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    if-nez v5, :cond_3

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e7f\u544a\u6e32\u67d3\u5931\u8d25\uff0ccreateType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n ImgUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAd.creative_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAdReach    errorMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v5, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    if-ne v4, v10, :cond_2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p0, v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto/16 :goto_0

    .line 253
    :cond_2
    const/4 v4, -0x4

    invoke-virtual {p0, v1, v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 256
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v4, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShowNow:Z

    if-nez v4, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReady()V

    goto/16 :goto_0

    .line 267
    :cond_4
    iget-boolean v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isClosed:Z

    if-eqz v4, :cond_5

    .line 268
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    const/16 v6, 0x9

    const-string v7, "\u6e32\u67d3\u5e7f\u544a\u8d85\u65f6(autotime)"

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getTimeJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportImpErrorTrack(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-object v6, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v6, v6, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e7f\u544a\u6e32\u67d3\u8d85\u65f6   \u8d85\u65f6\u65f6\u95f4 \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n ImgUrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAd.creative_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "error":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAdReach    errorMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v5, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    if-ne v4, v10, :cond_6

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v4, :cond_6

    .line 275
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p0, v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdReach(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto/16 :goto_0

    .line 278
    :cond_6
    const/4 v4, -0x3

    invoke-virtual {p0, v0, v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdError(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 282
    .end local v0    # "error":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v9, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 283
    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v8, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    .line 285
    new-instance v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$2;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected abstract onAdReady()V
.end method

.method public onAdStatusChange(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 136
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    array-length v2, v2

    if-le v2, p1, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpTime:[J

    aput-wide v0, v2, p1

    .line 141
    .end local v0    # "curTime":J
    :cond_0
    return-void
.end method

.method protected abstract onAdViewShow()V
.end method

.method protected abstract onCloseAd(I)V
.end method

.method public onNativeAdReach(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/request/ad/bean/Ad;>;"
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartRequestAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected removeSelf()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public reportErrUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",reportErrUrl mErrImpUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrImpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected abstract reqAdSuccess()V
.end method

.method protected requestAd([I)V
    .locals 4
    .param p1, "viewSize"    # [I

    .prologue
    .line 127
    const-class v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adViewSize:[I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->startReqAd:J

    .line 130
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-interface {v0, v2, v3, p0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrandPormotionImg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setExtend(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->extend:Ljava/util/Map;

    .line 904
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p1, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->session_id:Ljava/lang/String;

    .line 900
    return-void
.end method
