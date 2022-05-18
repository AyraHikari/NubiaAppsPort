.class public abstract Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final C0:J = 0x1L

.field static final C1:J = 0x3e8L

.field static final C2:J = 0xf4240L

.field static final C3:J = 0x3b9aca00L

.field static final C4:J = 0xdf8475800L

.field static final C5:J = 0x34630b8a000L

.field static final C6:J = 0x4e94914f0000L

.field public static final DAYS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field public static final HOURS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field static final MAX:J = 0x7fffffffffffffffL

.field public static final MICROSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field public static final MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field public static final MINUTES:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field public static final NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field public static final SECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

.field private static final values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$1;

    const-string v1, "NANOSECONDS"

    invoke-direct {v0, v3, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 59
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$2;

    const-string v1, "MICROSECONDS"

    invoke-direct {v0, v4, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$2;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MICROSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 71
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$3;

    const-string v1, "MILLISECONDS"

    invoke-direct {v0, v5, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$3;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 83
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;

    const-string v1, "SECONDS"

    invoke-direct {v0, v6, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->SECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 95
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;

    const-string v1, "MINUTES"

    invoke-direct {v0, v7, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MINUTES:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 107
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;

    const/4 v1, 0x5

    const-string v2, "HOURS"

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->HOURS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 119
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;

    const/4 v1, 0x6

    const-string v2, "DAYS"

    invoke-direct {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;-><init>(ILjava/lang/String;)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->DAYS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MICROSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->SECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MINUTES:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->HOURS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->DAYS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->index:I

    .line 171
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 152
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aget-object v1, v1, v0

    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    aget-object v1, v1, v0

    return-object v1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No enum const TimeUnit."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static values()[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->values:[Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static x(JJJ)J
    .locals 2
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .prologue
    .line 190
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 192
    :goto_0
    return-wide v0

    .line 191
    :cond_0
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 192
    :cond_1
    mul-long v0, p0, p2

    goto :goto_0
.end method


# virtual methods
.method public abstract convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
.end method

.method abstract excessNanos(JJ)I
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->index:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a valid enum for TimeUnit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sleep(J)V
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 397
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 398
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 399
    .local v0, "ms":J
    invoke-virtual {p0, p1, p2, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 400
    .local v2, "ns":I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 402
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 380
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 381
    invoke-virtual {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 382
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 383
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 385
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 361
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 362
    invoke-virtual {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 363
    .local v0, "ms":J
    invoke-virtual {p0, p2, p3, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 364
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 366
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_0
    return-void
.end method

.method public abstract toDays(J)J
.end method

.method public abstract toHours(J)J
.end method

.method public abstract toMicros(J)J
.end method

.method public abstract toMillis(J)J
.end method

.method public abstract toMinutes(J)J
.end method

.method public abstract toNanos(J)J
.end method

.method public abstract toSeconds(J)J
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->name:Ljava/lang/String;

    return-object v0
.end method
