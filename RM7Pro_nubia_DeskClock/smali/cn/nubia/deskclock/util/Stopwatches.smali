.class public Lcn/nubia/deskclock/util/Stopwatches;
.super Ljava/lang/Object;
.source "Stopwatches.java"


# static fields
.field public static final NO_LAP_NUMBER:I = -0x1

.field public static final PREF_ACCUM_TIME:Ljava/lang/String; = "sw_accum_time"

.field public static final PREF_ASSISTANT_START_SW_STATUS:Ljava/lang/String; = "assistant_start_sw_status"

.field public static final PREF_LAP_NUM:Ljava/lang/String; = "sw_lap_num"

.field public static final PREF_LAP_TIME:Ljava/lang/String; = "sw_lap_time_"

.field public static final PREF_START_TIME:Ljava/lang/String; = "sw_start_time"

.field public static final PREF_STATE:Ljava/lang/String; = "sw_state"

.field public static final STOPWATCH_RESET:I = 0x0

.field public static final STOPWATCH_RUNNING:I = 0x1

.field public static final STOPWATCH_SP:Ljava/lang/String; = "stopwatch_sharedpref"

.field public static final STOPWATCH_STOPPED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeText(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "time"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "format2"    # Ljava/lang/String;

    .prologue
    .line 45
    const-wide/16 v12, 0x0

    cmp-long v12, p0, v12

    if-gez v12, :cond_0

    .line 46
    const-wide/16 p0, 0x0

    .line 49
    :cond_0
    const-wide/16 v12, 0x3e8

    div-long v10, p0, v12

    .line 50
    .local v10, "seconds":J
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    sub-long v12, p0, v12

    const-wide/16 v14, 0xa

    div-long v6, v12, v14

    .line 51
    .local v6, "hundreds":J
    const-wide/16 v12, 0x3c

    div-long v8, v10, v12

    .line 52
    .local v8, "minutes":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v8

    sub-long/2addr v10, v12

    .line 53
    const-wide/16 v12, 0x3c

    div-long v4, v8, v12

    .line 54
    .local v4, "hours":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    sub-long/2addr v8, v12

    .line 55
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v12

    invoke-virtual {v12}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    .line 57
    .local v2, "decimalSeparator":C
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1

    .line 58
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "timeStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 60
    .end local v3    # "timeStr":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeStr":Ljava/lang/String;
    goto :goto_0
.end method
