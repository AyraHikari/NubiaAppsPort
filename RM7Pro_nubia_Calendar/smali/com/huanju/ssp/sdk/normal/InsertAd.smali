.class public Lcom/huanju/ssp/sdk/normal/InsertAd;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd;
.source "InsertAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;
    }
.end annotation


# instance fields
.field private adDialog:Landroid/app/AlertDialog;

.field private mWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "ac"    # Landroid/app/Activity;
    .param p2, "adSlotId"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->INSERT:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mWeak:Ljava/lang/ref/WeakReference;

    .line 33
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/huanju/ssp/sdk/normal/InsertAd$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/InsertAd$1;-><init>(Lcom/huanju/ssp/sdk/normal/InsertAd;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/sdk/normal/InsertAd;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/InsertAd;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->closeView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/sdk/normal/InsertAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/InsertAd;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->checkView()V

    return-void
.end method


# virtual methods
.method public clearAd()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->removeSelf()V

    .line 118
    :cond_0
    return-void
.end method

.method protected bridge synthetic createAdView(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd;->createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;

    move-result-object v0

    return-object v0
.end method

.method protected createAdView(Landroid/content/Context;)Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;

    invoke-direct {v0, p0, p1}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;-><init>(Lcom/huanju/ssp/sdk/normal/InsertAd;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDefaultImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAdClose(I)V
    .locals 2
    .param p1, "closeType"    # I

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, " InsertAd  onAdClose  adDialog.dismiss()"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    :cond_0
    const-string v1, " InsertAd  onAdClose  removeSelf"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onAdViewShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mWeak:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->adDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 59
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-super {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdViewShow()V

    .line 60
    return-void
.end method

.method protected reqAdSuccess()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public showAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v2, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    .line 93
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->getAdView()Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->showAdView()Z

    move-result v1

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShow:Z

    .line 95
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getCheckViewPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/sdk/normal/InsertAd$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/sdk/normal/InsertAd$2;-><init>(Lcom/huanju/ssp/sdk/normal/InsertAd;)V

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean v2, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    const-string v1, "\u8bf7\u5148\u8c03\u7528InsertAd.loadAd()"

    const/4 v2, -0x5

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdError(Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "PLZ call InsertAd.showAd() in UI thread"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
