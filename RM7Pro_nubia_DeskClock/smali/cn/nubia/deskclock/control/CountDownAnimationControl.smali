.class public Lcn/nubia/deskclock/control/CountDownAnimationControl;
.super Ljava/lang/Object;
.source "CountDownAnimationControl.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IAnimationOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;
    }
.end annotation


# instance fields
.field private mCountDigit:Landroid/widget/TextView;

.field private mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

.field private mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;"
        }
    .end annotation
.end field

.field private mCountDownTitle:Landroid/widget/TextView;

.field private mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

.field private mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

.field private mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

.field private mNubiaFonts:Landroid/graphics/Typeface;

.field private mStartSecond:I

.field private mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mStartSecond:I

    .line 35
    new-instance v0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;-><init>(Lcn/nubia/deskclock/control/CountDownAnimationControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/control/CountDownAnimationControl;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mStartSecond:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/control/CountDownAnimationControl;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mStartSecond:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/control/CountDownAnimationControl;Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;
    .param p1, "x1"    # Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method


# virtual methods
.method public endAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->sendEmptyMessage(I)Z

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/ui/CountDownView;->setEnableDraw(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onVisibility(Z)V

    .line 68
    :cond_1
    return-void
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    return-object v0
.end method

.method public initAnimantionParam()V
    .locals 5

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    .line 83
    .local v0, "deskClock":Lcn/nubia/deskclock/DeskClock;
    const v1, 0x7f1200db

    .line 84
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/CountDownView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    .line 85
    const v1, 0x7f1200dc

    .line 86
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .line 87
    const v1, 0x7f1200de

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f1200d9

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    .line 90
    new-instance v1, Lcn/nubia/deskclock/control/CountDownControl;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/deskclock/control/CountDownControl;-><init>(Lcn/nubia/deskclock/ui/CountDownView;Landroid/widget/TextView;Lcn/nubia/deskclock/model/CountDownModel;)V

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    .line 92
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/CountDownView;->setInnerTriangeCircleView(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)V

    .line 93
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDinMediumFonts()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mNubiaFonts:Landroid/graphics/Typeface;

    .line 94
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->release()V

    .line 187
    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    .line 189
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->release()V

    .line 191
    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .line 194
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    iget-object v0, v0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    iget-object v0, v0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownControl:Lcn/nubia/deskclock/control/CountDownControl;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 201
    :cond_4
    return-void
.end method

.method public setWorkingMode(Lcn/nubia/deskclock/model/CountDownModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "countDownModel":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<*>;"
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 105
    return-void
.end method

.method public startAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;

    const/16 v1, 0xfa1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, v4}, Lcn/nubia/deskclock/ui/CountDownView;->setEnableDraw(Z)V

    .line 48
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v0, v4}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setEnableDraw(Z)V

    .line 49
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDigit:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    invoke-interface {v0, v4}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onVisibility(Z)V

    .line 55
    :cond_1
    return-void
.end method

.method public updateDate()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
