.class final Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SunPerfProvider"
.end annotation


# instance fields
.field final divisor:J

.field final multiplier:J

.field final perf:Lsun/misc/Perf;


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;

    invoke-direct {v6, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/misc/Perf;

    iput-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->perf:Lsun/misc/Perf;

    .line 216
    const-wide/32 v4, 0x3b9aca00

    .line 217
    .local v4, "numerator":J
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->perf:Lsun/misc/Perf;

    invoke-virtual {v6}, Lsun/misc/Perf;->highResFrequency()J

    move-result-wide v0

    .line 218
    .local v0, "denominator":J
    invoke-static {v4, v5, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->access$000(JJ)J

    move-result-wide v2

    .line 219
    .local v2, "gcd":J
    div-long v6, v4, v2

    iput-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->multiplier:J

    .line 220
    div-long v6, v0, v2

    iput-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->divisor:J

    .line 221
    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 8

    .prologue
    .line 223
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->perf:Lsun/misc/Perf;

    invoke-virtual {v2}, Lsun/misc/Perf;->highResCounter()J

    move-result-wide v0

    .line 229
    .local v0, "ctr":J
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->divisor:J

    div-long v2, v0, v2

    iget-wide v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->multiplier:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->divisor:J

    rem-long v4, v0, v4

    iget-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->multiplier:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;->divisor:J

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method
