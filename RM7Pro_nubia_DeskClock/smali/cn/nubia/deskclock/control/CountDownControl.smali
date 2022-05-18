.class public Lcn/nubia/deskclock/control/CountDownControl;
.super Ljava/lang/Object;
.source "CountDownControl.java"


# instance fields
.field private mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

.field private mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;"
        }
    .end annotation
.end field

.field private mDownTime:J

.field public final mHandler:Landroid/os/Handler;

.field private mIsDrag:Z

.field private mIsPause:Z

.field private mIsRun:Z

.field private mTimeRunnable:Ljava/lang/Runnable;

.field private mView:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;Landroid/widget/TextView;Lcn/nubia/deskclock/model/CountDownModel;)V
    .locals 2
    .param p1, "view"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p2, "tv2"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/deskclock/ui/CountDownView;",
            "Landroid/widget/TextView;",
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "model":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<*>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 16
    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 17
    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 18
    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsDrag:Z

    .line 19
    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    .line 23
    new-instance v0, Lcn/nubia/deskclock/control/CountDownControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/CountDownControl$1;-><init>(Lcn/nubia/deskclock/control/CountDownControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, p2}, Lcn/nubia/deskclock/ui/CountDownView;->setTimerTextView(Landroid/widget/TextView;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->setHandler(Landroid/os/Handler;)V

    .line 86
    :cond_0
    iput-object p3, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/control/CountDownControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownControl;->clearTimeRunnable()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/control/CountDownControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/control/CountDownControl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/control/CountDownControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/control/CountDownControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsDrag:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/control/CountDownControl;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    iget-wide v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcn/nubia/deskclock/control/CountDownControl;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/model/CountDownModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/control/CountDownControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownControl;->newTimeRunnable()V

    return-void
.end method

.method private clearTimeRunnable()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 94
    :cond_0
    return-void
.end method

.method private newTimeRunnable()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcn/nubia/deskclock/control/CountDownControl$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/CountDownControl$2;-><init>(Lcn/nubia/deskclock/control/CountDownControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 111
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 128
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownControl;->clearTimeRunnable()V

    .line 129
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startControlShowAnimator()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 131
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCurrentTime(J)V

    .line 133
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsDrag:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcn/nubia/deskclock/control/CountDownControl;->clearTimeRunnable()V

    .line 149
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startReSetAnimator()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 152
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsDrag:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 138
    iput-boolean v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 139
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->setCanScroll(Z)V

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    const v1, 0x12345

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startControlHideAnimator()V

    .line 144
    :cond_0
    return-void
.end method

.method public setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/deskclock/inter/ICountDownCallback;

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    .line 198
    return-void
.end method

.method public setPauseTime(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "callback"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v5, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/deskclock/ui/CountDownView;->startSetTimeAnimator(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 186
    return-void
.end method

.method public setPauseTime(ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V
    .locals 4
    .param p1, "second"    # I
    .param p2, "callback"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    .prologue
    .line 174
    div-int/lit16 v0, p1, 0xe10

    .line 175
    .local v0, "h":I
    rem-int/lit16 v3, p1, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 176
    .local v1, "m":I
    rem-int/lit16 v3, p1, 0xe10

    rem-int/lit8 v2, v3, 0x3c

    .line 177
    .local v2, "s":I
    invoke-virtual {p0, v0, v1, v2, p2}, Lcn/nubia/deskclock/control/CountDownControl;->setPauseTime(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V

    .line 178
    return-void
.end method

.method public setTime(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V
    .locals 7
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "callback"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    .prologue
    const/4 v6, 0x0

    .line 163
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v5, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/deskclock/ui/CountDownView;->startSetTimeAnimator(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentHour()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    .line 167
    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentMinute()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentSecond()I

    move-result v3

    .line 166
    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onAjustTimeTo(III)V

    .line 169
    :cond_0
    iput-boolean v6, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    .line 170
    iput-boolean v6, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 171
    return-void
.end method

.method public setTime(ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V
    .locals 4
    .param p1, "second"    # I
    .param p2, "callback"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    .prologue
    .line 155
    div-int/lit16 v0, p1, 0xe10

    .line 156
    .local v0, "h":I
    rem-int/lit16 v3, p1, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 157
    .local v1, "m":I
    rem-int/lit16 v3, p1, 0xe10

    rem-int/lit8 v2, v3, 0x3c

    .line 158
    .local v2, "s":I
    invoke-virtual {p0, v0, v1, v2, p2}, Lcn/nubia/deskclock/control/CountDownControl;->setTime(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V

    .line 159
    return-void
.end method

.method public setTotalTime(I)V
    .locals 1
    .param p1, "totalTime"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/CountDownView;->setTotalTime(I)V

    .line 202
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->isTimeZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsDrag:Z

    if-nez v0, :cond_0

    .line 117
    iput-boolean v1, p0, Lcn/nubia/deskclock/control/CountDownControl;->mIsRun:Z

    .line 118
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->setCanScroll(Z)V

    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mHandler:Landroid/os/Handler;

    const v1, 0x12345

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startControlHideAnimator()V

    .line 123
    :cond_0
    return-void
.end method

.method public startCloseAnimation()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startExitAnimator()V

    .line 194
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl;->mView:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->startEnterAnimator()V

    .line 190
    return-void
.end method
