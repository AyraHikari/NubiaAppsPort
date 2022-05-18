.class public Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "RewardVideoAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;


# static fields
.field public static final HORIZONTAL:I = 0x2

.field public static final VERTICAL:I = 0x1


# instance fields
.field mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

.field private mAdSlotId:Ljava/lang/String;

.field private mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

.field private mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

.field mKsVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field private mOrientation:I

.field mPkgName:Ljava/lang/String;

.field private mReqType:I

.field private mRewardAmount:I

.field private mRewardName:Ljava/lang/String;

.field mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

.field private mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private mUserID:Ljava/lang/String;

.field private mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardAmount:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mUserID:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mOrientation:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotId:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    .line 65
    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotId:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    invoke-interface {v0, p0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->setClickAdListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mIsCountControl:Z

    return v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;II)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestAd(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->getAdConfig(JJJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestBDadReward(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestTTadReward(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->requestKSadReward(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;Lcom/kwad/sdk/api/KsRewardVideoAd;)Lcom/kwad/sdk/api/KsRewardVideoAd;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/RewardVideoAd;
    .param p1, "x1"    # Lcom/kwad/sdk/api/KsRewardVideoAd;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    return-object p1
.end method

.method private doAdClose(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 363
    return-void
.end method

.method private doAdError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 342
    return-void
.end method

.method private getAdConfig(JJJ)V
    .locals 13
    .param p1, "curTime"    # J
    .param p3, "st"    # J
    .param p5, "et"    # J

    .prologue
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RewardVideoAd getAdConfig curTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",st."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",et:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 117
    const-wide/16 v6, 0x0

    .line 118
    .local v6, "reqTime":J
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 119
    const-wide/32 v6, 0x927c0

    .line 123
    :goto_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-nez v3, :cond_2

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 121
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-wide/32 v6, 0x927c0

    goto :goto_0

    .line 127
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 128
    .local v4, "lastTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RewardVideoAd getAdConfig lastTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 129
    sub-long v8, p1, v4

    cmp-long v8, v8, v6

    if-lez v8, :cond_0

    .line 130
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 131
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-interface {v2, v8, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v8

    iget-object v9, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v9, v9, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    iget-object v10, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadTTAd(Ljava/lang/String;II)V
    .locals 4
    .param p1, "codeId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "heght"    # I

    .prologue
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTTAd ExpressView codeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 411
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 412
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 414
    invoke-virtual {v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p3

    .line 415
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardName:Ljava/lang/String;

    .line 416
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardAmount:I

    .line 417
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mUserID:Ljava/lang/String;

    .line 418
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    const-string v2, "media_extra"

    .line 419
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mOrientation:I

    .line 420
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 423
    .local v0, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v2, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;

    invoke-direct {v2, p0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$7;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 496
    return-void
.end method

.method private removeAdView()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method private requestAd(II)V
    .locals 2
    .param p1, "reqType"    # I
    .param p2, "type"    # I

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardVideoAd requestAd reqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 143
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    .line 144
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 145
    const-string v0, "RewardVideoAd requestAd reqType:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 147
    new-instance v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$2;

    invoke-direct {v0, p0, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$2;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 155
    new-instance v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$3;

    invoke-direct {v0, p0, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$3;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 162
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 163
    new-instance v0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;

    invoke-direct {v0, p0, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$4;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requestBDadReward(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;->setAppSid(Ljava/lang/String;)V

    .line 223
    new-instance v1, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    new-instance v3, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;

    invoke-direct {v3, p0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$6;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)V

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/mobads/rewardvideo/RewardVideoAd$RewardVideoAdListener;Z)V

    iput-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    .line 293
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;->load()V

    .line 294
    return-void
.end method

.method private requestKSadReward(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 176
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 177
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    const-wide/16 v2, 0x0

    .line 180
    .local v2, "postId":J
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 184
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 185
    const-string v4, "nubia_ad"

    const-string v5, "requestKSSplashAd postid is not long"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++requestBDadReward  postId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 189
    new-instance v4, Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-direct {v4, v2, v3}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    invoke-virtual {v4}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v1

    .line 190
    .local v1, "scene":Lcom/kwad/sdk/api/KsScene;
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v4

    new-instance v5, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;

    invoke-direct {v5, p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$5;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    invoke-interface {v4, v1, v5}, Lcom/kwad/sdk/api/KsLoadManager;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    goto :goto_1
.end method

.method private requestTTadReward(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    .line 298
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 299
    .local v3, "width":I
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "height":I
    const/4 v2, 0x0

    .line 303
    .local v2, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    .line 304
    if-nez v2, :cond_0

    .line 305
    const-string v4, "SplashAd"

    const-string v5, "requestTTFeedAd ttAdManager is null, init"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    .line 310
    :cond_0
    if-nez v2, :cond_1

    .line 311
    const-string v4, "SplashAd"

    const-string v5, "requestTTFeedAd ttAdManager is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v4

    iput-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestTTadReward get TT SDKVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 319
    const-string v4, "requestTTadReward get SSP SDKVersion:1.46.3"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 320
    if-ne p1, v6, :cond_2

    .line 321
    const/4 v4, 0x1

    iput v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mOrientation:I

    .line 327
    :goto_1
    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-direct {p0, v4, v3, v1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->loadTTAd(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x2

    :try_start_1
    iput v4, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mOrientation:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showKSRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoPlayConfig"    # Lcom/kwad/sdk/api/KsVideoPlayConfig;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->isAdEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$8;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)V

    .line 517
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setRewardAdInteractionListener(Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;)V

    .line 569
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVideoReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    const/4 v1, 0x3

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v1, v2, :cond_1

    .line 395
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v1, v2, :cond_2

    .line 397
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    if-eqz v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;->isReady()Z

    move-result v0

    goto :goto_0

    .line 400
    :cond_2
    const/4 v1, 0x4

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v1, v2, :cond_0

    .line 401
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKSRewardVideoAd:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->isAdEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAndShowAd(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTTadReward type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method protected onAdClose(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->doAdClose(I)V

    .line 369
    return-void
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->doAdError(Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method protected onAdViewShow()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdViewShow()V

    .line 349
    return-void
.end method

.method public onClickAdStateChang(I)V
    .locals 0
    .param p1, "clickAdState"    # I

    .prologue
    .line 359
    return-void
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mPkgName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setRewardAdInteractionListener()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-nez v0, :cond_0

    .line 592
    const-string v0, "RewardVideoAd"

    const-string v1, "+++setRewardAdInteractionListener mttRewardVideoAd is null:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd$9;-><init>(Lcom/huanju/ssp/sdk/normal/RewardVideoAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    goto :goto_0
.end method

.method public setRewardVideoAdListener(Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;)V
    .locals 0
    .param p1, "rewardVideoAdListener"    # Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardVideoAdListener:Lcom/huanju/ssp/sdk/inf/RewardVideoAdListener;

    .line 391
    return-void
.end method

.method public setmOrientation(I)V
    .locals 0
    .param p1, "mOrientation"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mOrientation:I

    .line 512
    return-void
.end method

.method public setmRewardAmount(I)V
    .locals 0
    .param p1, "mRewardAmount"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardAmount:I

    .line 504
    return-void
.end method

.method public setmRewardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRewardName"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mRewardName:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setmUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserID"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mUserID:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 574
    const/4 v0, 0x3

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v0, v1, :cond_2

    .line 581
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mBDRewardVideoAd:Lcom/baidu/mobads/rewardvideo/RewardVideoAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/rewardvideo/RewardVideoAd;->show()V

    goto :goto_0

    .line 584
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mReqType:I

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->mKsVideoPlayConfig:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-direct {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/RewardVideoAd;->showKSRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V

    goto :goto_0
.end method
