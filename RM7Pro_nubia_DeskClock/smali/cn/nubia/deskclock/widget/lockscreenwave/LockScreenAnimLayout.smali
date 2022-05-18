.class public Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;
.super Landroid/widget/RelativeLayout;
.source "LockScreenAnimLayout.java"

# interfaces
.implements Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenAnimLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationScanText:[I

.field private mLocationWave:[I

.field private mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->isInEditMode()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationWave:[I

    .line 44
    new-array v0, v2, [I

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationScanText:[I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mPaint:Landroid/graphics/Paint;

    .line 46
    iput-object p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->reset()V

    goto :goto_0
.end method

.method private setPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationWave:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationWave:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->setWaveLocation(II)V

    .line 73
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationScanText:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationScanText:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->setScanTextLocation(II)V

    .line 75
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->isInEditMode()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public invalidateEx()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->invalidate()V

    .line 103
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->isInEditMode()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    const v1, 0x7f120074

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationWave:[I

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    .line 62
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationWave:[I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    .line 64
    const v1, 0x7f120075

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationScanText:[I

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    .line 66
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLocationScanText:[I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    .line 68
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->setPosition()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "LockScreenAnimLayout"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->destroy()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .line 85
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V

    iput-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .line 86
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->setPosition()V

    .line 87
    return-void
.end method

.method public setTipInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "LockScreenAnimLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTipInfo info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->setTipInfo(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->invalidate()V

    .line 124
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "LockScreenAnimLayout"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->startAnimation()V

    .line 113
    return-void
.end method

.method public startAnimationCameraScanText()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "LockScreenAnimLayout"

    const-string v1, "startAnimationCameraScanText"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->startAnimationScanText()V

    .line 118
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "LockScreenAnimLayout"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->mLockScreenCtrl:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->stopAnimation()V

    .line 108
    return-void
.end method
