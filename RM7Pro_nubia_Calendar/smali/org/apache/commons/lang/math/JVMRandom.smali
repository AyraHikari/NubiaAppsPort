.class public final Lorg/apache/commons/lang/math/JVMRandom;
.super Ljava/util/Random;
.source "JVMRandom.java"


# static fields
.field private static final SHARED_RANDOM:Ljava/util/Random;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private constructed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 61
    return-void
.end method

.method private static bitsRequired(J)I
    .locals 8
    .param p0, "num"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 213
    move-wide v2, p0

    .line 214
    .local v2, "y":J
    const/4 v0, 0x0

    .line 217
    .local v0, "n":I
    :goto_0
    cmp-long v1, p0, v6

    if-gez v1, :cond_1

    .line 218
    rsub-int/lit8 v0, v0, 0x40

    .line 221
    .end local v0    # "n":I
    :cond_0
    return v0

    .line 220
    .restart local v0    # "n":I
    :cond_1
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    .line 224
    shl-long/2addr p0, v4

    .line 225
    shr-long/2addr v2, v4

    goto :goto_0
.end method

.method private static next63bits()J
    .locals 4

    .prologue
    .line 202
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static nextLong(J)J
    .locals 12
    .param p0, "n"    # J

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 145
    cmp-long v4, p0, v8

    if-gtz v4, :cond_0

    .line 146
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Upper bound for nextInt must be positive"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_0
    neg-long v4, p0

    and-long/2addr v4, p0

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 153
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v4

    sub-long v6, p0, v10

    invoke-static {v6, v7}, Lorg/apache/commons/lang/math/JVMRandom;->bitsRequired(J)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3f

    shr-long v2, v4, v6

    .line 163
    :goto_0
    return-wide v2

    .line 160
    :cond_1
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v0

    .line 161
    .local v0, "bits":J
    rem-long v2, v0, p0

    .line 162
    .local v2, "val":J
    sub-long v4, v0, v2

    sub-long v6, p0, v10

    add-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/JVMRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 118
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 131
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/JVMRandom;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    monitor-exit p0

    return-void
.end method
