.class public Lnet/fortuna/ical4j/util/UidGenerator;
.super Ljava/lang/Object;
.source "UidGenerator.java"


# static fields
.field private static lastMillis:J


# instance fields
.field private final hostInfo:Lnet/fortuna/ical4j/util/HostInfo;

.field private final pid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lnet/fortuna/ical4j/util/InetAddressHostInfo;

    invoke-direct {v0}, Lnet/fortuna/ical4j/util/InetAddressHostInfo;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/util/UidGenerator;-><init>(Lnet/fortuna/ical4j/util/HostInfo;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/util/HostInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostInfo"    # Lnet/fortuna/ical4j/util/HostInfo;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lnet/fortuna/ical4j/util/UidGenerator;->hostInfo:Lnet/fortuna/ical4j/util/HostInfo;

    .line 69
    iput-object p2, p0, Lnet/fortuna/ical4j/util/UidGenerator;->pid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private static uniqueTimestamp()Lnet/fortuna/ical4j/model/DateTime;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 93
    const-class v4, Lnet/fortuna/ical4j/util/UidGenerator;

    monitor-enter v4

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "currentMillis":J
    sget-wide v6, Lnet/fortuna/ical4j/util/UidGenerator;->lastMillis:J

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 98
    sget-wide v0, Lnet/fortuna/ical4j/util/UidGenerator;->lastMillis:J

    .line 100
    :cond_0
    sget-wide v6, Lnet/fortuna/ical4j/util/UidGenerator;->lastMillis:J

    sub-long v6, v0, v6

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 101
    add-long/2addr v0, v8

    .line 103
    :cond_1
    sput-wide v0, Lnet/fortuna/ical4j/util/UidGenerator;->lastMillis:J

    .line 104
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v2, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(J)V

    .line 106
    .local v2, "timestamp":Lnet/fortuna/ical4j/model/DateTime;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 107
    return-object v2

    .line 104
    .end local v2    # "timestamp":Lnet/fortuna/ical4j/model/DateTime;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public generateUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-static {}, Lnet/fortuna/ical4j/util/UidGenerator;->uniqueTimestamp()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lnet/fortuna/ical4j/util/UidGenerator;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v1, p0, Lnet/fortuna/ical4j/util/UidGenerator;->hostInfo:Lnet/fortuna/ical4j/util/HostInfo;

    if-eqz v1, :cond_0

    .line 81
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    iget-object v1, p0, Lnet/fortuna/ical4j/util/UidGenerator;->hostInfo:Lnet/fortuna/ical4j/util/HostInfo;

    invoke-interface {v1}, Lnet/fortuna/ical4j/util/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    new-instance v1, Lnet/fortuna/ical4j/model/property/Uid;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/property/Uid;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
