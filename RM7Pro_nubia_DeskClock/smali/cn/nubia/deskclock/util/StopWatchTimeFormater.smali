.class public Lcn/nubia/deskclock/util/StopWatchTimeFormater;
.super Ljava/lang/Object;
.source "StopWatchTimeFormater.java"


# static fields
.field private static final TIME_MAX:J = 0x157529f6L


# instance fields
.field private mDeciSecond:I

.field private mHour:I

.field private mMinute:I

.field private mSecond:I

.field private mTimeNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->reset()V

    .line 13
    return-void
.end method

.method private transformTime()V
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    .line 60
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 61
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    .line 62
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    .line 63
    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    .line 91
    invoke-direct {p0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->transformTime()V

    .line 92
    return-void
.end method

.method public deciSecondTimeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeciSecond()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    return v0
.end method

.method public minTimeToAngle()F
    .locals 5

    .prologue
    const/high16 v4, 0x45610000    # 3600.0f

    .line 27
    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    add-int v1, v2, v3

    .line 28
    .local v1, "second":I
    int-to-float v2, v1

    rem-float/2addr v2, v4

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    div-float v0, v2, v4

    .line 29
    .local v0, "mMinRotateAngle":F
    return v0
.end method

.method public overMax()Z
    .locals 4

    .prologue
    const-wide/32 v2, 0x157529f6

    .line 95
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 96
    iput-wide v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    .line 97
    invoke-direct {p0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->transformTime()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    .line 83
    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    .line 84
    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 85
    iput v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mDeciSecond:I

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    .line 87
    return-void
.end method

.method public secondTimeToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 33
    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    if-nez v0, :cond_2

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_2
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 38
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    if-le v0, v3, :cond_4

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    if-le v0, v3, :cond_5

    iget v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mHour:I

    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mMinute:I

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mSecond:I

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public setPausetime()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public timeToAngle()F
    .locals 4

    .prologue
    .line 19
    iget-wide v0, p0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->mTimeNumber:J

    const-wide/32 v2, 0xea60

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    return v0
.end method
