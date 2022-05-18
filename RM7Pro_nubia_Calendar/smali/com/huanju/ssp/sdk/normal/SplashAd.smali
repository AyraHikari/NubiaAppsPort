.class public Lcom/huanju/ssp/sdk/normal/SplashAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "SplashAd.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;,
        Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;,
        Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;,
        Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;
    }
.end annotation


# static fields
.field private static final RESRESHTIME:J = 0xaL


# instance fields
.field private final SP_SHOW_TIME:Ljava/lang/String;

.field private autoCloseTime:J

.field private caculateAdTime:J

.field private canJumpImmediately:Z

.field private closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

.field private downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

.field private isAutoStop:Z

.field private isClsoe:Z

.field private isFail:Z

.field private isJumpTargetWhenFail:Z

.field private isLoop:Z

.field private isShowCountDown:Z

.field private isTimeoutEnd:Z

.field private loopIntent:Landroid/content/Intent;

.field private mActivityWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

.field mBdContentView:Landroid/view/ViewGroup;

.field mBdSplashAd:Lcom/baidu/mobads/SplashAd;

.field private mIsClose:Z

.field private mIsDestroy:Z

.field private mIsDrawView:Z

.field private mIsKsClick:Z

.field mIsOnpause:Z

.field mPkgName:Ljava/lang/String;

.field private mReqType:I

.field private mSplashViewId:I

.field private showAdTime:J

.field private showTimeOutTast:Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;

.field private startTime:J

.field private timeCache:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramClass"    # Ljava/lang/Class;
    .param p3, "adSlotId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 61
    iput-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isJumpTargetWhenFail:Z

    .line 62
    iput-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isShowCountDown:Z

    .line 63
    iput-wide v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    .line 64
    iget-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->caculateAdTime:J

    .line 65
    iput-wide v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    .line 68
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    .line 69
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-direct {v0, p0, v4}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    .line 70
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    invoke-direct {v0, p0, v4}, Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    .line 71
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;

    invoke-direct {v0, p0, v4}, Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showTimeOutTast:Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->timeCache:J

    .line 73
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isAutoStop:Z

    .line 74
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isTimeoutEnd:Z

    .line 75
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClsoe:Z

    .line 76
    const-string v0, "showtime"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->SP_SHOW_TIME:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    .line 78
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    .line 79
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDestroy:Z

    .line 80
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDrawView:Z

    .line 81
    iput v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mSplashViewId:I

    .line 85
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsClose:Z

    .line 86
    iput v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    .line 93
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    .line 98
    if-eqz p2, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    invoke-interface {v0, p0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->setClickAdListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->requestKSSplashAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Lcom/kwad/sdk/api/KsSplashScreenAd;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->addKSView(Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isTimeoutEnd:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isTimeoutEnd:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/huanju/ssp/sdk/normal/SplashAd;J)V
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setCountShowTime(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->jumpKsWhenCanClick()V

    return-void
.end method

.method static synthetic access$1800(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClosed:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2501(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2601(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2801(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->closeView(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isAutoStop:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isAutoStop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsCountControl:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsClose:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClsoe:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClosed:Z

    return p1
.end method

.method static synthetic access$3301(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->closeView(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClosed:Z

    return p1
.end method

.method static synthetic access$3601(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->closeView(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/sdk/AdInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/huanju/ssp/sdk/normal/SplashAd;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->timeCache:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/huanju/ssp/sdk/normal/SplashAd;J)J
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->timeCache:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/huanju/ssp/sdk/normal/SplashAd;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->caculateAdTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/huanju/ssp/sdk/normal/SplashAd;J)J
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->caculateAdTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/huanju/ssp/sdk/normal/SplashAd;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDrawView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->requestAd(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/huanju/ssp/sdk/normal/SplashAd;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getAdConfig(JJJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->requestTTFeedAd(Z)V

    return-void
.end method

.method private addKSView(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .locals 6
    .param p1, "splashScreenAd"    # Lcom/kwad/sdk/api/KsSplashScreenAd;

    .prologue
    const/4 v5, -0x1

    .line 262
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lcom/huanju/ssp/sdk/normal/SplashAd$5;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$5;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-interface {p1, v3, v4}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getView(Landroid/content/Context;Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Landroid/view/View;

    move-result-object v2

    .line 310
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mSplashViewId:I

    .line 311
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 312
    .local v1, "root":Landroid/widget/FrameLayout;
    if-nez v1, :cond_0

    .line 313
    const-string v3, "nubia_ad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++requestKSSplashAd mSplashViewId is null mSplashViewId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mSplashViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private doAdClose(I)V
    .locals 6
    .param p1, "closeType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 669
    :try_start_0
    iget-boolean v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isJumpTargetWhenFail:Z

    if-eqz v4, :cond_2

    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    if-nez v5, :cond_3

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    if-nez v2, :cond_1

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++onAdClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 673
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++activity.getClass().getName() mIsDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDestroy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    .line 676
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDestroy:Z

    if-nez v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 680
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 688
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->removeAdID()V

    .line 689
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    .line 692
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_2
    return-void

    :cond_2
    move v4, v3

    .line 669
    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private doAdError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 610
    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    .line 612
    const-wide/16 v0, 0x0

    .line 613
    .local v0, "delayTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdError errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 614
    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isJumpTargetWhenFail:Z

    if-eqz v2, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getDelayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 618
    :cond_0
    new-instance v2, Lcom/huanju/ssp/sdk/normal/SplashAd$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd$8;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    invoke-static {v2, v0, v1}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 625
    return-void
.end method

.method private fetchBdSplashAD(Ljava/lang/String;)V
    .locals 3
    .param p1, "adPlaceId"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {}, Lcom/baidu/mobads/AdSettings;->getSDKVersion()Ljava/lang/Double;

    move-result-object v0

    .line 325
    .local v0, "SDKVersion":Ljava/lang/Double;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++\u5e7f\u544aSDK\u7684\u7248\u672c\u53f7\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 327
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SplashAd$6;

    invoke-direct {v1, p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$6;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method private getAdConfig(JJJ)V
    .locals 13
    .param p1, "curTime"    # J
    .param p3, "st"    # J
    .param p5, "et"    # J

    .prologue
    .line 700
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SplashAd getAdConfig curTime:"

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

    .line 701
    const-wide/16 v6, 0x0

    .line 702
    .local v6, "reqTime":J
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v8, p5, v8

    if-nez v8, :cond_1

    .line 703
    const-wide/32 v6, 0x927c0

    .line 707
    :goto_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 708
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-nez v3, :cond_2

    .line 719
    :cond_0
    :goto_1
    return-void

    .line 705
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-wide/32 v6, 0x927c0

    goto :goto_0

    .line 711
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 712
    .local v4, "lastTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SplashAd getAdConfig lastTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 713
    sub-long v8, p1, v4

    cmp-long v8, v8, v6

    if-lez v8, :cond_0

    .line 714
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 715
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    invoke-interface {v2, v8, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    invoke-static {}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getInstance()Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;

    move-result-object v8

    iget-object v9, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;

    iget-object v9, v9, Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;->adSlotId:Ljava/lang/String;

    iget-object v10, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/huanju/ssp/base/core/request/ad/RequestAdManager;->getAdConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDelayTime()J
    .locals 8

    .prologue
    .line 934
    const-wide/16 v2, 0x1f4

    .line 935
    .local v2, "delay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->startTime:J

    sub-long v0, v4, v6

    .line 936
    .local v0, "castTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "castTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",autoCloseTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 937
    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 938
    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    sub-long v2, v4, v0

    .line 940
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 941
    return-wide v2
.end method

.method private jumpKsWhenCanClick()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++jumpWhenCanClick canJumpImmediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 651
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    .line 653
    invoke-direct {p0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    .line 654
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->canJumpImmediately:Z

    goto :goto_0
.end method

.method private removeAdView()V
    .locals 4

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;

    .line 803
    .local v0, "adView":Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
    if-eqz v0, :cond_0

    .line 805
    new-instance v1, Lcom/huanju/ssp/sdk/normal/SplashAd$9;

    invoke-direct {v1, p0, v0}, Lcom/huanju/ssp/sdk/normal/SplashAd$9;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    :cond_0
    return-void
.end method

.method private requestAd(I)V
    .locals 2
    .param p1, "reqType"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++SplashAd requestAd reqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 200
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    .line 201
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->loadAndShowAd()V

    .line 228
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->fetchBdSplashAD(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 206
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$2;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 217
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3

    .line 218
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$3;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$3;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->loadAndShowAd()V

    goto :goto_0
.end method

.method private requestKSSplashAd(Ljava/lang/String;)V
    .locals 6
    .param p1, "adPlaceId"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++requestKSSplashAd SplashAd requestAd dspAppId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",adPlaceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    const-wide/16 v2, 0x0

    .line 235
    .local v2, "postId":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 239
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++requestKSSplashAd SplashAd requestAd postId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 240
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 241
    const-string v4, "nubia_ad"

    const-string v5, "+++requestKSSplashAd postid is not long"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-direct {v4, v2, v3}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    invoke-virtual {v4}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v1

    .line 245
    .local v1, "scene":Lcom/kwad/sdk/api/KsScene;
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v4

    new-instance v5, Lcom/huanju/ssp/sdk/normal/SplashAd$4;

    invoke-direct {v5, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$4;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-interface {v4, v1, v5}, Lcom/kwad/sdk/api/KsLoadManager;->loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    goto :goto_1
.end method

.method private requestTTFeedAd(Z)V
    .locals 10
    .param p1, "isExpress"    # Z

    .prologue
    .line 413
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->width:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "width":I
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v6, v6, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->height:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 415
    .local v2, "height":I
    if-gtz v5, :cond_2

    if-gtz v2, :cond_2

    .line 416
    const/16 v5, 0x438

    .line 417
    const/16 v2, 0x780

    .line 425
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 427
    .local v3, "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    .line 428
    if-nez v3, :cond_1

    .line 429
    const-string v6, "SplashAd"

    const-string v7, "+++requestTTFeedAd ttAdManager is null, init"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAppId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/huanju/ssp/base/core/common/TTAdManagerHolder;->get()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v3

    .line 434
    :cond_1
    if-nez v3, :cond_4

    .line 435
    const-string v6, "SplashAd"

    const-string v7, "+++requestTTFeedAd ttAdManager is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_1
    return-void

    .line 418
    .end local v3    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :cond_2
    if-gtz v5, :cond_3

    .line 419
    const/16 v5, 0x438

    .line 420
    const/16 v2, 0x780

    goto :goto_0

    .line 421
    :cond_3
    if-gtz v2, :cond_0

    .line 422
    const/16 v5, 0x438

    .line 423
    const/16 v2, 0x780

    goto :goto_0

    .line 438
    .restart local v3    # "ttAdManager":Lcom/bytedance/sdk/openadsdk/TTAdManager;
    :cond_4
    const/4 v0, 0x0

    .line 439
    .local v0, "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++requestTTFeedAd isExpress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mAdSlotConfigInfo.dspAdslotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++requestTTFeedAd width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 441
    if-eqz p1, :cond_5

    .line 452
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 453
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 454
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    int-to-float v7, v5

    int-to-float v8, v2

    .line 457
    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 458
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 466
    :goto_2
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-interface {v3, v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v4

    .line 467
    .local v4, "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    new-instance v6, Lcom/huanju/ssp/sdk/normal/SplashAd$7;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$7;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    iget-wide v8, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    long-to-int v7, v8

    invoke-interface {v4, v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 591
    .end local v0    # "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    .end local v4    # "ttAdNative":Lcom/bytedance/sdk/openadsdk/TTAdNative;
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "adSlot":Lcom/bytedance/sdk/openadsdk/AdSlot;
    :cond_5
    :try_start_1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v7, v7, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    .line 461
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 462
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 463
    invoke-virtual {v6, v5, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v6

    .line 464
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private setCountShowTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 597
    iget-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsCountControl:Z

    if-eqz v2, :cond_0

    .line 598
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 600
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v2, "onAdViewShow cache time"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 601
    const-string v2, "showtime"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u65e0\u81ea\u66f4\u65b0\u5f00\u5173\u5b57\u6bb5\u8fd4\u56de"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 980
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsClose()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsClose:Z

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 759
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public goToMainActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++goToMainActivity mReqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x3

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    if-ne v0, v1, :cond_1

    .line 630
    invoke-direct {p0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    .line 631
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    if-ne v2, v0, :cond_2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++goToMainActivity mIsKsClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->jumpKsWhenCanClick()V

    goto :goto_0

    .line 639
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mReqType:I

    if-ne v0, v1, :cond_0

    .line 640
    invoke-direct {p0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    .line 641
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    goto :goto_0
.end method

.method protected onAdClose(I)V
    .locals 10
    .param p1, "closeType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 861
    :try_start_0
    iget-boolean v8, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isJumpTargetWhenFail:Z

    if-eqz v8, :cond_3

    move v8, v6

    :goto_0
    iget-boolean v9, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    if-nez v9, :cond_4

    :goto_1
    or-int/2addr v6, v8

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    if-nez v6, :cond_2

    .line 862
    const-string v6, "onAdClose:"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 863
    const/4 v2, 0x0

    .line 864
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activity.getClass().getName() activity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mActivityWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 865
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mActivityWeak:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_5

    .line 866
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mActivityWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "context":Landroid/content/Context;
    check-cast v2, Landroid/content/Context;

    .line 872
    .restart local v2    # "context":Landroid/content/Context;
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 873
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 874
    .local v1, "activity":Landroid/app/Activity;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activity.getClass().getName() activity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    .line 877
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 876
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 878
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 881
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 883
    const/high16 v4, 0x10a0000

    .line 884
    .local v4, "enterAnim":I
    const v5, 0x10a0001

    .line 885
    .local v5, "exitAnim":I
    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 886
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    .line 889
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "enterAnim":I
    .end local v5    # "exitAnim":I
    :cond_1
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->removeAdID()V

    .line 890
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    .line 893
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    .line 898
    :goto_3
    return-void

    :cond_3
    move v8, v7

    .line 861
    goto/16 :goto_0

    :cond_4
    move v6, v7

    goto/16 :goto_1

    .line 868
    .restart local v2    # "context":Landroid/content/Context;
    :cond_5
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    .line 869
    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "context":Landroid/content/Context;
    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_2

    .line 894
    .end local v2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdError errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsClose:Z

    .line 738
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2601(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 753
    return-void
.end method

.method protected onAdViewShow()V
    .locals 8

    .prologue
    .line 765
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isTimeoutEnd:Z

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/huanju/ssp/sdk/normal/SplashAd;->setCountShowTime(J)V

    .line 767
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    .line 768
    iget-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isLoop:Z

    if-nez v3, :cond_2

    .line 769
    const-string v3, "onAdViewShow:"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 770
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    iput-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    .line 772
    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    iput-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->caculateAdTime:J

    .line 773
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    iput-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customVideoView mAd.videoTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;

    .line 777
    .local v0, "adView":Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 778
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020002

    .line 779
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 780
    .local v1, "contentView":Landroid/view/ViewGroup;
    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 782
    .end local v1    # "contentView":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iget-boolean v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isShowCountDown:Z

    if-eqz v3, :cond_3

    .line 784
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    const-wide/16 v4, 0x320

    invoke-static {v3, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v0    # "adView":Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdViewShow()V

    .line 794
    return-void

    .line 786
    .restart local v0    # "adView":Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->access$2700(Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;I)Ljava/lang/Runnable;

    move-result-object v3

    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    invoke-static {v3, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 789
    .end local v0    # "adView":Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClickAdStateChang(I)V
    .locals 3
    .param p1, "clickAdState"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 821
    sparse-switch p1, :sswitch_data_0

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 824
    :sswitch_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 825
    invoke-static {p0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2801(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 826
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 832
    :sswitch_1
    invoke-direct {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->removeAdView()V

    .line 833
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 834
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->downCountTask:Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 841
    :sswitch_2
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 842
    iput-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isAutoStop:Z

    .line 844
    invoke-direct {p0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    .line 845
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    goto :goto_0

    .line 821
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_2
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsDestroy:Z

    .line 665
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 945
    const-string v0, "+++onPause"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onPause :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsOnpause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onResume mIsOnpause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsKsClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onResume this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onResume mIsSspClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsSspClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 955
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsKsClick:Z

    if-eqz v0, :cond_2

    .line 956
    :cond_0
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsOnpause:Z

    .line 957
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->goToMainActivity()V

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsSspClick:Z

    if-eqz v0, :cond_1

    .line 959
    iput-boolean v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsSspClick:Z

    .line 960
    invoke-direct {p0, v3}, Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdClose(I)V

    .line 961
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0, v3}, Lcom/huanju/ssp/sdk/listener/AdListener;->onCloseAd(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isFail:Z

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->startTime:J

    .line 729
    const-string v0, "onStart:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 730
    const-string v0, "onStart: VER_CODE=1"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    iget-wide v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 732
    return-void
.end method

.method protected reqAdSuccess()V
    .locals 1

    .prologue
    .line 907
    const-string v0, "reqAdSuccess:"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isAutoStop:Z

    .line 909
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->closeTask:Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    iget-boolean v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isClsoe:Z

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/huanju/ssp/sdk/normal/SplashAd$10;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$10;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 922
    :cond_0
    return-void
.end method

.method public requestShowAd()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "+++SplashAd requestShowAd :"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/SplashAd$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/SplashAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method public setActivityContext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mActivityWeak:Ljava/lang/ref/WeakReference;

    .line 106
    return-void
.end method

.method public setAutoCloseTime(J)V
    .locals 3
    .param p1, "autoCloseTime"    # J

    .prologue
    .line 131
    const-wide/16 v0, 0x12c

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->autoCloseTime:J

    .line 133
    return-void
.end method

.method public setCountControl(Z)V
    .locals 0
    .param p1, "isControl"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mIsCountControl:Z

    .line 110
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->loopIntent:Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public setIsJumpTargetWhenFail(Z)V
    .locals 0
    .param p1, "isJump"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isJumpTargetWhenFail:Z

    .line 123
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mPkgName:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public setShowAdTime(J)V
    .locals 3
    .param p1, "showAdTime"    # J

    .prologue
    .line 141
    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x186a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 142
    iput-wide p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    .line 143
    iget-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showAdTime:J

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->caculateAdTime:J

    .line 145
    :cond_0
    return-void
.end method

.method public setShowAdTimeOut(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowAdTimeOut time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->showTimeOutTast:Lcom/huanju/ssp/sdk/normal/SplashAd$ShowTimeOutTast;

    invoke-static {v0, p1, p2}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 799
    return-void
.end method

.method public setSplashViewId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 925
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->mSplashViewId:I

    .line 926
    return-void
.end method

.method public showCountDown(Z)V
    .locals 0
    .param p1, "isShowCountDown"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd;->isShowCountDown:Z

    .line 154
    return-void
.end method
