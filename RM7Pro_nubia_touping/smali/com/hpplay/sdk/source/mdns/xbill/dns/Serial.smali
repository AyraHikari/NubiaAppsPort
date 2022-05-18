.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Serial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX32:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static compare(JJ)I
    .locals 8

    .prologue
    const-wide v6, 0x100000000L

    const-wide/16 v4, 0x0

    const-wide v2, 0xffffffffL

    .line 14
    cmp-long v0, p0, v4

    if-ltz v0, :cond_0

    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    cmp-long v0, p2, v4

    if-ltz v0, :cond_2

    cmp-long v0, p2, v2

    if-lez v0, :cond_3

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    sub-long v0, p0, p2

    .line 19
    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 20
    sub-long/2addr v0, v6

    .line 23
    :cond_4
    :goto_0
    long-to-int v0, v0

    return v0

    .line 21
    :cond_5
    const-wide v2, -0xffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 22
    add-long/2addr v0, v6

    goto :goto_0
.end method
