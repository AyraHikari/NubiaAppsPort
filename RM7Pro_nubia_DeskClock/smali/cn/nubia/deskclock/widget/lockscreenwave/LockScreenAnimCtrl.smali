.class public Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;
.super Ljava/lang/Object;
.source "LockScreenAnimCtrl.java"

# interfaces
.implements Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;


# static fields
.field public static final DURATION_WAVE_LIFETIME:I = 0x11c6

.field public static final DURATION_WAVE_MARGIN:I = 0xfa


# instance fields
.field private final DELAY_START_PROMOTING:I

.field private final DELAY_START_TEXT_SCAN:I

.field private final MAX_WAVE_NUM:I

.field private final MSG_PLAY_PROMOTING:I

.field private final MSG_PLAY_TEXT_ALPHA:I

.field private final MSG_PLAY_TEXT_SCAN:I

.field private final MSG_PLAY_WAVE:I

.field private mHandler:Landroid/os/Handler;

.field private mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

.field private mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

.field private mWaveLifeTimeCounter:I

.field private mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v1, 0x1f4

    iput v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->DELAY_START_PROMOTING:I

    .line 14
    const/16 v1, 0x9c4

    iput v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->DELAY_START_TEXT_SCAN:I

    .line 15
    iput v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->MAX_WAVE_NUM:I

    .line 18
    iput v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->MSG_PLAY_PROMOTING:I

    .line 19
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->MSG_PLAY_WAVE:I

    .line 20
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->MSG_PLAY_TEXT_SCAN:I

    .line 21
    iput v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->MSG_PLAY_TEXT_ALPHA:I

    .line 28
    new-instance v1, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl$1;-><init>(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V

    iput-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    .line 52
    iput v2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaveLifeTimeCounter:I

    .line 53
    iput-object p2, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    .line 54
    new-array v1, v3, [Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    iput-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 57
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    new-instance v2, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    invoke-direct {v2, p1, p0}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-direct {v1, p1, p0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;)V

    iput-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playAnimationPromiting()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playNewWave()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playTextScan()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playTextAlpha()V

    return-void
.end method

.method private playAnimationPromiting()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    return-void
.end method

.method private playNewWave()V
    .locals 5

    .prologue
    .line 148
    const/4 v1, -0x1

    .line 149
    .local v1, "index":I
    const v2, 0x7fffffff

    .line 151
    .local v2, "lifeTime":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 152
    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->getLifeTime()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 153
    move v1, v0

    .line 154
    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->getLifeTime()I

    move-result v2

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v3, -0x1

    if-eq v3, v1, :cond_2

    .line 159
    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v3, v3, v1

    iget v4, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaveLifeTimeCounter:I

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->setLifeTime(I)V

    .line 160
    iget v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaveLifeTimeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaveLifeTimeCounter:I

    .line 161
    iget-object v3, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->startAnimation()V

    .line 163
    :cond_2
    return-void
.end method

.method private playTextAlpha()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setVisibility(Z)V

    .line 173
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->startAlphaAnimation()V

    .line 174
    return-void
.end method

.method private playTextScan()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setVisibility(Z)V

    .line 167
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->startScanAnimation()V

    .line 168
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->stopAnimation()V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->destroy()V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->destroy()V

    .line 98
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method public invalidateEx()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mRedrawListener:Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/RedrawListener;->invalidateEx()V

    .line 81
    :cond_0
    return-void
.end method

.method public setScanTextLocation(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setPositionXY(II)V

    .line 74
    return-void
.end method

.method public setTipInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setTipInfo(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setWaveLocation(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->setPositionXY(II)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x9c4

    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v0, v4}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setVisibility(Z)V

    .line 102
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setAlpha(F)V

    .line 104
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->removeAllMessages()V

    .line 105
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    return-void
.end method

.method public startAnimationScanText()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->removeAllMessages()V

    .line 115
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playTextScan()V

    .line 116
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->playTextAlpha()V

    .line 117
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->removeAllMessages()V

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mWaves:[Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->stopAnimation()V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->stopScanAnimation()V

    .line 127
    iget-object v1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimCtrl;->mScanText:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {v1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->stopAlphaAnimation()V

    .line 128
    return-void
.end method
