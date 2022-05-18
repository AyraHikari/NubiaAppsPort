.class public Lcn/nubia/deskclock/control/StopWatchAnimationControl;
.super Ljava/lang/Object;
.source "StopWatchAnimationControl.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IAnimationOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNubiaFonts:Landroid/graphics/Typeface;

.field private mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

.field private mStopWatchDigit:Landroid/widget/TextView;

.field private mStopWatchDigitDeci:Landroid/widget/TextView;

.field private mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

.field private mStopWatchTitle:Landroid/widget/TextView;

.field mThread:Ljava/lang/Runnable;

.field private mWorkerHandler:Landroid/os/Handler;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/DeskClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/control/StopWatchAnimationControl$WorkerHandler;-><init>(Lcn/nubia/deskclock/control/StopWatchAnimationControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl$1;-><init>(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mThread:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->startEnterAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->startCloseAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->startTiming()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->pauseTiming()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->resetTiming()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/control/StopWatchAnimationControl;J)V
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;
    .param p1, "x1"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->setTiming(J)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/ui/StopWatchClockView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Lcn/nubia/deskclock/model/StopWatchModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/control/StopWatchAnimationControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private pauseTiming()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->pauseTiming()V

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method

.method private resetTiming()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->resetTiming()V

    .line 149
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method

.method private setTiming(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setHandAngle(J)V

    .line 157
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->getDigitalSecondTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->getDigitalDeciSecondTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    return-void
.end method

.method private startCloseAnimation()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->startCloseAnimation()V

    .line 125
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setEnableDraw(Z)V

    .line 126
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method private startEnterAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setEnableDraw(Z)V

    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->startEnterAnimation()V

    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

.method private startTiming()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->startTiming()V

    .line 135
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    return-void
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initAnimantionParam()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    .line 64
    .local v0, "deskClock":Lcn/nubia/deskclock/DeskClock;
    const v1, 0x7f120167

    .line 65
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/StopWatchClockView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    .line 66
    const v1, 0x7f120169

    .line 67
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f12016a

    .line 69
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigitDeci:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f120165

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchTitle:Landroid/widget/TextView;

    .line 71
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDinMediumFonts()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mNubiaFonts:Landroid/graphics/Typeface;

    .line 72
    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchDigit:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->release()V

    .line 186
    iput-object v1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchClockView:Lcn/nubia/deskclock/ui/StopWatchClockView;

    .line 188
    :cond_1
    return-void
.end method

.method public setWorkingMode(Lcn/nubia/deskclock/model/StopWatchModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/StopWatchModel;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 39
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    return-void
.end method

.method public updateDate()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
