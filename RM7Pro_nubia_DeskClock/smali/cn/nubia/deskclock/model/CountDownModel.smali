.class public Lcn/nubia/deskclock/model/CountDownModel;
.super Ljava/lang/Object;
.source "CountDownModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MinuteAndSecond",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private mCanScroll:Z

.field private mCountDigitText:Ljava/lang/String;

.field private mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

.field private mCurrentTime:J

.field private mDeleteCountState:Ljava/lang/String;

.field private mFinalTime:J

.field private mMinuteAndSecondListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMinuteAndSecond",
            "Listener;"
        }
    .end annotation
.end field

.field private mPauseTime:I

.field private mStartSecond:I

.field private mTotalTime:I

.field private mVisible:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mStartSecond:I

    return-void
.end method


# virtual methods
.method public getCountDigitText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCountDigitText:Ljava/lang/String;

    return-object v0
.end method

.method public getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    return-object v0
.end method

.method public getCountDownViewCanScroll()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-boolean v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCanScroll:Z

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 40
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-wide v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCurrentTime:J

    return-wide v0
.end method

.method public getFinalTime()J
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-wide v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mFinalTime:J

    return-wide v0
.end method

.method public getListener()Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mMinuteAndSecondListener:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    return-object v0
.end method

.method public getPauseBgVisibility()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mVisible:I

    return v0
.end method

.method public getPauseTime()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mPauseTime:I

    return v0
.end method

.method public getStartSecond()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mStartSecond:I

    return v0
.end method

.method public getmTotalTime()I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mTotalTime:I

    return v0
.end method

.method public getsetDeleteStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownModel;->mDeleteCountState:Ljava/lang/String;

    return-object v0
.end method

.method public setCountDigitText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCountDigitText:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V
    .locals 0
    .param p1, "countDownCallback"    # Lcn/nubia/deskclock/inter/ICountDownCallback;

    .prologue
    .line 94
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCountDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    .line 95
    return-void
.end method

.method public setCountDownViewCanScroll(Z)V
    .locals 0
    .param p1, "can"    # Z

    .prologue
    .line 70
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-boolean p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCanScroll:Z

    .line 71
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 44
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-wide p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mCurrentTime:J

    .line 45
    return-void
.end method

.method public setDeleteStateString(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 102
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mDeleteCountState:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setFinalTime(J)V
    .locals 1
    .param p1, "finalTime"    # J

    .prologue
    .line 36
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput-wide p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mFinalTime:J

    .line 37
    return-void
.end method

.method public setPauseBgVisibility(I)V
    .locals 0
    .param p1, "invisible"    # I

    .prologue
    .line 78
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mVisible:I

    .line 79
    return-void
.end method

.method public setPauseTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 86
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mPauseTime:I

    .line 87
    return-void
.end method

.method public setStartSecondAndlistener(ILjava/lang/Object;)V
    .locals 0
    .param p1, "startSecond"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMinuteAndSecond",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    .local p2, "listener":Ljava/lang/Object;, "TMinuteAndSecondListener;"
    iput p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mStartSecond:I

    .line 49
    iput-object p2, p0, Lcn/nubia/deskclock/model/CountDownModel;->mMinuteAndSecondListener:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public setmTotalTime(I)V
    .locals 0
    .param p1, "mTotalTime"    # I

    .prologue
    .line 28
    .local p0, "this":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<TMinuteAndSecondListener;>;"
    iput p1, p0, Lcn/nubia/deskclock/model/CountDownModel;->mTotalTime:I

    .line 29
    return-void
.end method
