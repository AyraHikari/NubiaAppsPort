.class public Lcom/huanju/ssp/base/core/view/web/BrowserDialog;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

.field private mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 0
    .param p2, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/huanju/ssp/base/core/request/ad/bean/Ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "contextWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 49
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v2, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1, p0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;-><init>(Landroid/content/Context;Lcom/huanju/ssp/base/core/view/web/BrowserPagNative$BrowserPageStateListener;)V

    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .line 59
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    .line 60
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 61
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 62
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public load(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "click_url"    # Ljava/lang/String;
    .param p2, "isSys"    # Z

    .prologue
    const/4 v5, -0x1

    .line 72
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 84
    .local v1, "window":Landroid/view/Window;
    if-nez v1, :cond_3

    .line 85
    const-string v2, "window == null"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    if-eqz p2, :cond_4

    .line 90
    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-eqz v2, :cond_5

    .line 93
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    .line 95
    :cond_5
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 96
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 99
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 100
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->getWebPage()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->getWebPage()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 107
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v2, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCloseBtnClick()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->removeAllView()V

    .line 165
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->destroy()V

    .line 166
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 170
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 171
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    .line 172
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->goBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 124
    return-void
.end method

.method public onWebLoadFinish()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onWebStartLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 128
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;->onClickAdStateChang(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-wide v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    if-nez v0, :cond_1

    .line 132
    const-string v0, "web \u9875\u5f00\u59cb\u52a0\u8f7d   \u9875\u9762\u5f00\u59cb\u52a0\u8f7d\u53d1\u9001\u70b9\u51fb\u76d1\u64ad"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iput-boolean v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isSubmitClkTrk:Z

    .line 134
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {v1, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->getTracks(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrack(Ljava/util/Set;Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method

.method public setWebPagListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->listener:Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;

    .line 115
    return-void
.end method

.method public setonShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/web/BrowserDialog;->pagNative:Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/view/web/BrowserPagNative;->setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V

    .line 119
    return-void
.end method
