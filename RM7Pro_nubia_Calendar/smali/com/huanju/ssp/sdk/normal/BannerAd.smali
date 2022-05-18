.class public Lcom/huanju/ssp/sdk/normal/BannerAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "BannerAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;
    }
.end annotation


# instance fields
.field private recycleTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/BannerAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/BannerAd;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    .line 72
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->loadAndShowAd()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z

    .prologue
    .line 35
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/BannerAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/BannerAd;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    .line 36
    iput-boolean p3, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    .line 44
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->loadAndShowAd()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "isCarousel"    # Z
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "extend"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/BannerAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/BannerAd;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    .line 49
    iput-boolean p3, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    .line 50
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->session_id:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iput-object p5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->str_extend:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->loadAndShowAd()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/sdk/AdInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/normal/BannerAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/sdk/normal/BannerAd;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    return v0
.end method

.method static synthetic access$700(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    return v0
.end method

.method static synthetic access$800(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->mIsCarousel:Z

    return v0
.end method

.method private canReloadAd(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 109
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, -0x500

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;-><init>(Lcom/huanju/ssp/sdk/normal/BannerAd;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    const-string v0, "nubia_ad/default_banner.jpg"

    .line 128
    .local v0, "defaultImg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultImg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method protected onAdClose(I)V
    .locals 1
    .param p1, "closeType"    # I

    .prologue
    .line 118
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->removeSelf()V

    goto :goto_0
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lcom/huanju/ssp/sdk/normal/BannerAd;->canReloadAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    sget-wide v2, Lcom/huanju/ssp/base/core/common/Config;->BANNER_REQUEST_INTERVAL:J

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onClickAdStateChang(I)V
    .locals 4
    .param p1, "clickAdState"    # I

    .prologue
    .line 144
    sparse-switch p1, :sswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 147
    :sswitch_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 152
    :sswitch_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd;->recycleTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public setViewScale(Ljava/lang/Double;)V
    .locals 4
    .param p1, "d"    # Ljava/lang/Double;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;

    invoke-static {v0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->access$400(Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;Ljava/lang/Double;)V

    goto :goto_0
.end method
