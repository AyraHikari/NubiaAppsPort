.class public Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static timer:Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;


# instance fields
.field private final stack:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->timer:Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->stack:Ljava/util/Stack;

    .line 13
    return-void
.end method

.method public static _start()J
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->timer:Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->start()J

    move-result-wide v0

    return-wide v0
.end method

.method public static _took(Ljava/util/concurrent/TimeUnit;)D
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->timer:Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->took(Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public start()J
    .locals 4

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->stack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public took(Ljava/util/concurrent/TimeUnit;)D
    .locals 4

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 23
    sget-object v2, Lcom/hpplay/sdk/source/mdns/utils/ExecutionTimer$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 48
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 25
    :pswitch_0
    long-to-double v0, v0

    const-wide v2, 0x42d3a52453c00000L    # 8.64E13

    div-double/2addr v0, v2

    goto :goto_1

    .line 28
    :pswitch_1
    long-to-double v0, v0

    const-wide v2, 0x428a3185c5000000L    # 3.6E12

    div-double/2addr v0, v2

    goto :goto_1

    .line 31
    :pswitch_2
    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_1

    .line 34
    :pswitch_3
    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    goto :goto_1

    .line 37
    :pswitch_4
    long-to-double v0, v0

    const-wide v2, 0x422bf08eb0000000L    # 6.0E10

    div-double/2addr v0, v2

    goto :goto_1

    .line 40
    :pswitch_5
    long-to-double v0, v0

    goto :goto_1

    .line 42
    :pswitch_6
    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
