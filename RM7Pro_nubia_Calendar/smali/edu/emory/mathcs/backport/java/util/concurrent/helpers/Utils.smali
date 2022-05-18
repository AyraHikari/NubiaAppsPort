.class public final Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$MillisProvider;,
        Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;
    }
.end annotation


# static fields
.field static array$Ljava$lang$Object:Ljava/lang/Class; = null

.field private static final nanoTimer:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;

.field private static final providerProp:Ljava/lang/String; = "edu.emory.mathcs.backport.java.util.concurrent.NanoTimerProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 44
    .local v4, "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    :try_start_0
    new-instance v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$1;

    invoke-direct {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$1;-><init>()V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, "nanoTimerClassName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 51
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "cls":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    move-object v5, v4

    .line 61
    .end local v3    # "nanoTimerClassName":Ljava/lang/String;
    .end local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .local v5, "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    :goto_0
    if-nez v5, :cond_2

    .line 63
    :try_start_1
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;

    invoke-direct {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v5    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .restart local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    :goto_1
    if-nez v4, :cond_1

    .line 69
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$MillisProvider;

    .end local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    invoke-direct {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$MillisProvider;-><init>()V

    .line 72
    .restart local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    :cond_1
    sput-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTimer:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;

    .line 73
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "WARNING: unable to load the system-property-defined nanotime provider; switching to the default"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .end local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .restart local v5    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    goto :goto_0

    .line 65
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .restart local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    goto :goto_1

    .end local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .restart local v5    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    :cond_2
    move-object v4, v5

    .end local v5    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    .restart local v4    # "timer":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000(JJ)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->gcd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static awaitNanos(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;J)J
    .locals 5
    .param p0, "cond"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 202
    .end local p1    # "nanosTimeout":J
    :goto_0
    return-wide p1

    .line 200
    .restart local p1    # "nanosTimeout":J
    :cond_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v0

    .line 201
    .local v0, "now":J
    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    .line 202
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long/2addr p1, v2

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static collectionToArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 8
    .param p0, "c"    # Ljava/util/Collection;

    .prologue
    .line 275
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 276
    .local v4, "len":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 277
    .local v0, "arr":[Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "idx":I
    move v2, v1

    .line 280
    .end local v1    # "idx":I
    .local v2, "idx":I
    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    move v2, v1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    .line 283
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 284
    if-ne v2, v4, :cond_1

    .line 286
    .end local v0    # "arr":[Ljava/lang/Object;
    :goto_1
    return-object v0

    .restart local v0    # "arr":[Ljava/lang/Object;
    :cond_1
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v6, :cond_2

    const-string v6, "[Ljava.lang.Object;"

    invoke-static {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_2
    invoke-static {v0, v2, v6}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_2

    .line 289
    :cond_3
    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v5, v6, 0x3

    .line 290
    .local v5, "newcap":I
    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 292
    array-length v6, v0

    const v7, 0x7fffffff

    if-ge v6, v7, :cond_5

    .line 293
    const v5, 0x7fffffff

    .line 299
    :cond_4
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v6, :cond_6

    const-string v6, "[Ljava.lang.Object;"

    invoke-static {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_3
    invoke-static {v0, v5, v6}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 300
    move v4, v5

    goto :goto_0

    .line 296
    :cond_5
    new-instance v6, Ljava/lang/OutOfMemoryError;

    const-string v7, "required array size too large"

    invoke-direct {v6, v7}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_6
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_3
.end method

.method public static collectionToArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 307
    .local v0, "aType":Ljava/lang/Class;
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    .line 308
    .local v5, "len":I
    array-length v7, p1

    if-lt v7, v5, :cond_0

    move-object v1, p1

    .line 310
    .local v1, "arr":[Ljava/lang/Object;
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 311
    .local v4, "itr":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "idx":I
    move v3, v2

    .line 313
    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_1
    if-ge v3, v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v3

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_1

    .line 308
    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v3    # "idx":I
    .end local v4    # "itr":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v1, v7

    goto :goto_0

    .line 316
    .restart local v1    # "arr":[Ljava/lang/Object;
    .restart local v3    # "idx":I
    .restart local v4    # "itr":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 317
    if-ne v3, v5, :cond_2

    .line 325
    .end local v1    # "arr":[Ljava/lang/Object;
    :goto_2
    return-object v1

    .line 318
    .restart local v1    # "arr":[Ljava/lang/Object;
    :cond_2
    if-ne v1, p1, :cond_3

    .line 320
    const/4 v7, 0x0

    aput-object v7, p1, v3

    move-object v1, p1

    .line 321
    goto :goto_2

    .line 325
    :cond_3
    invoke-static {v1, v3, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 329
    :cond_4
    array-length v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v6, v7, 0x3

    .line 330
    .local v6, "newcap":I
    array-length v7, v1

    if-ge v6, v7, :cond_5

    .line 332
    array-length v7, v1

    const v8, 0x7fffffff

    if-ge v7, v8, :cond_6

    .line 333
    const v6, 0x7fffffff

    .line 339
    :cond_5
    invoke-static {v1, v6, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 340
    move v5, v6

    goto :goto_1

    .line 336
    :cond_6
    new-instance v7, Ljava/lang/OutOfMemoryError;

    const-string v8, "required array size too large"

    invoke-direct {v7, v8}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static gcd(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 268
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    rem-long v0, p0, p2

    .local v0, "r":J
    move-wide p0, p2

    move-wide p2, v0

    goto :goto_0

    .line 269
    .end local v0    # "r":J
    :cond_0
    return-wide p0
.end method

.method public static nanoTime()J
    .locals 2

    .prologue
    .line 103
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTimer:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/NanoTimer;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
