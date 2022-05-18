.class public Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCaptureTS:J

.field private mEncodeTime:J

.field private mSendTime:J

.field private mSerial:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureTS()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mCaptureTS:J

    return-wide v0
.end method

.method public getEncodeTime()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mEncodeTime:J

    return-wide v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mSendTime:J

    return-wide v0
.end method

.method public getSerial()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mSerial:I

    return v0
.end method

.method public setCaptureTS(J)V
    .locals 1

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mCaptureTS:J

    .line 25
    return-void
.end method

.method public setEncodeTime(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mEncodeTime:J

    .line 33
    return-void
.end method

.method public setSendTime(J)V
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mSendTime:J

    .line 41
    return-void
.end method

.method public setSerial(I)V
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->mSerial:I

    .line 17
    return-void
.end method
