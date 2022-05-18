.class public Lcom/hpplay/sdk/source/mdns/utils/Wait;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final forResponse(Ljava/lang/Iterable;)V
    .locals 4

    .prologue
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/utils/Wait;->waitTill()J

    move-result-wide v0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 24
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    goto :goto_0

    .line 29
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static final forResponse(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/utils/Wait;->waitTill()J

    move-result-wide v0

    .line 35
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 37
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    goto :goto_0

    .line 42
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static final waitTill()J
    .locals 4

    .prologue
    .line 15
    const-string v0, "mdns_resolve_wait"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-lez v0, :cond_0

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method
