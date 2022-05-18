.class public Lcn/nubia/deskclock/model/TimerHelper;
.super Ljava/lang/Object;
.source "TimerHelper.java"


# instance fields
.field private mHour:I

.field private mMinute:I

.field private mSecond:I

.field private mTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "times"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    .line 7
    iput v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 8
    iput v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 9
    iput-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 10
    iput-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    .line 13
    iput-wide p1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 14
    invoke-direct {p0}, Lcn/nubia/deskclock/model/TimerHelper;->convertHMS()V

    .line 15
    return-void
.end method

.method private convertAngleToTime(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 121
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    .line 122
    div-float v0, p1, v3

    mul-float/2addr v0, v5

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 132
    :goto_0
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 133
    invoke-direct {p0}, Lcn/nubia/deskclock/model/TimerHelper;->convertHMS()V

    .line 134
    return-void

    .line 123
    :cond_0
    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    .line 124
    const/high16 v0, 0x44070000    # 540.0f

    sub-float v1, p1, v3

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    goto :goto_0

    .line 125
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_2

    .line 126
    const/high16 v0, 0x44160000    # 600.0f

    const/high16 v1, 0x44960000    # 1200.0f

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    goto :goto_0

    .line 127
    :cond_2
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_3

    .line 128
    const/high16 v0, 0x44e10000    # 1800.0f

    const/high16 v1, 0x44e10000    # 1800.0f

    sub-float v2, p1, v4

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    goto :goto_0

    .line 130
    :cond_3
    const/high16 v0, 0x45610000    # 3600.0f

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    goto :goto_0

    .line 132
    :cond_4
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_1
.end method

.method private convertHMS()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    .line 137
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 138
    .local v0, "time":J
    rem-long v2, v0, v6

    long-to-int v2, v2

    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 139
    div-long/2addr v0, v6

    .line 140
    rem-long v2, v0, v6

    long-to-int v2, v2

    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 141
    div-long/2addr v0, v6

    .line 142
    const-wide/16 v2, 0x64

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    .line 143
    return-void
.end method


# virtual methods
.method public convertScrollerTimeToStr()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x9

    .line 51
    iget-wide v4, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 53
    .local v2, "time":J
    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00:00:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    if-le v1, v8, :cond_0

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "str":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 55
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    if-le v1, v8, :cond_2

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    if-le v1, v8, :cond_3

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":00"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_1

    .line 58
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 59
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public convertTimeToAngle()F
    .locals 6

    .prologue
    .line 98
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 111
    .local v1, "time":F
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    .local v0, "angle":F
    :goto_0
    return v0

    .line 114
    .end local v0    # "angle":F
    :cond_0
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    long-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    iget-wide v4, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    long-to-float v3, v4

    div-float v0, v2, v3

    .restart local v0    # "angle":F
    goto :goto_0
.end method

.method public convertTimeToStr()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x9

    .line 66
    iget-wide v4, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 67
    .local v2, "time":J
    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00:00:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    if-le v1, v8, :cond_0

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "str":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 69
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    if-le v1, v8, :cond_2

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    if-le v1, v8, :cond_3

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    if-le v1, v8, :cond_4

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_1

    .line 71
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 72
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 73
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    return v0
.end method

.method public getScaleFraction()F
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 167
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 172
    .local v0, "fraction":F
    :goto_0
    return v0

    .line 170
    .end local v0    # "fraction":F
    :cond_1
    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .restart local v0    # "fraction":F
    goto :goto_0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    return-wide v0
.end method

.method public isTimeZero()Z
    .locals 4

    .prologue
    .line 18
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 85
    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 86
    iput v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 87
    return-void
.end method

.method public setAngleToTime(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/model/TimerHelper;->convertAngleToTime(F)V

    .line 80
    return-void
.end method

.method public setTime(III)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    .line 44
    iput p2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    .line 45
    iput p3, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    .line 46
    iget v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mHour:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mMinute:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mSecond:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 47
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 23
    invoke-direct {p0}, Lcn/nubia/deskclock/model/TimerHelper;->convertHMS()V

    .line 24
    return-void
.end method

.method public setTotalTime(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 176
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTotalTime:J

    .line 177
    return-void
.end method

.method public subTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 91
    iget-wide v0, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    iput-wide v2, p0, Lcn/nubia/deskclock/model/TimerHelper;->mTime:J

    .line 94
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/model/TimerHelper;->convertHMS()V

    .line 95
    return-void
.end method
