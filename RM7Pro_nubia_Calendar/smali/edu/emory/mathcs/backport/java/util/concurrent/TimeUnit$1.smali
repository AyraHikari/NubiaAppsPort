.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$1;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = 0x76d3ab7952e14a9L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 56
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 3
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 57
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 55
    const-wide v0, 0x4e94914f0000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 54
    const-wide v0, 0x34630b8a000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 50
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 51
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 53
    const-wide v0, 0xdf8475800L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 49
    return-wide p1
.end method

.method public toSeconds(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 52
    const-wide/32 v0, 0x3b9aca00

    div-long v0, p1, v0

    return-wide v0
.end method
