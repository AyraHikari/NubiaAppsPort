.class public Ledu/emory/mathcs/backport/java/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field static array$Ljava$lang$Object:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 473
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 1
    .param p0, "a"    # [B
    .param p1, "key"    # B

    .prologue
    .line 111
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([BB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CC)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "key"    # C

    .prologue
    .line 107
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DD)I
    .locals 1
    .param p0, "a"    # [D
    .param p1, "key"    # D

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FF)I
    .locals 1
    .param p0, "a"    # [F
    .param p1, "key"    # F

    .prologue
    .line 119
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([II)I
    .locals 1
    .param p0, "a"    # [I
    .param p1, "key"    # I

    .prologue
    .line 99
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JJ)I
    .locals 1
    .param p0, "a"    # [J
    .param p1, "key"    # J

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "c"    # Ljava/util/Comparator;

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SS)I
    .locals 1
    .param p0, "a"    # [S
    .param p1, "key"    # S

    .prologue
    .line 103
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v0

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 259
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

.method public static copyOf([BI)[B
    .locals 4
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 270
    new-array v0, p1, [B

    .line 271
    .local v0, "arr":[B
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 272
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 271
    goto :goto_0
.end method

.method public static copyOf([CI)[C
    .locals 4
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 310
    new-array v0, p1, [C

    .line 311
    .local v0, "arr":[C
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 312
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 311
    goto :goto_0
.end method

.method public static copyOf([DI)[D
    .locals 4
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 330
    new-array v0, p1, [D

    .line 331
    .local v0, "arr":[D
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 332
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 331
    goto :goto_0
.end method

.method public static copyOf([FI)[F
    .locals 4
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 320
    new-array v0, p1, [F

    .line 321
    .local v0, "arr":[F
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 322
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 321
    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 4
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 290
    new-array v0, p1, [I

    .line 291
    .local v0, "arr":[I
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 292
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 291
    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 4
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 300
    new-array v0, p1, [J

    .line 301
    .local v0, "arr":[J
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 302
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 301
    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .param p2, "newType"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 259
    sget-object v2, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "[Ljava.lang.Object;"

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/Arrays;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    if-ne p2, v2, :cond_1

    new-array v0, p1, [Ljava/lang/Object;

    .line 261
    .local v0, "arr":[Ljava/lang/Object;
    :goto_1
    array-length v2, p0

    if-ge v2, p1, :cond_2

    array-length v1, p0

    .line 262
    .local v1, "len":I
    :goto_2
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v0

    .line 259
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "len":I
    :cond_0
    sget-object v2, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    goto :goto_1

    .restart local v0    # "arr":[Ljava/lang/Object;
    :cond_2
    move v1, p1

    .line 261
    goto :goto_2
.end method

.method public static copyOf([SI)[S
    .locals 4
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 280
    new-array v0, p1, [S

    .line 281
    .local v0, "arr":[S
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 282
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 281
    goto :goto_0
.end method

.method public static copyOf([ZI)[Z
    .locals 4
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 340
    new-array v0, p1, [Z

    .line 341
    .local v0, "arr":[Z
    array-length v2, p0

    if-ge v2, p1, :cond_0

    array-length v1, p0

    .line 342
    .local v1, "len":I
    :goto_0
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    return-object v0

    .end local v1    # "len":I
    :cond_0
    move v1, p1

    .line 341
    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 7
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 371
    sub-int v3, p2, p1

    .line 372
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 373
    :cond_0
    new-array v0, v3, [B

    .line 374
    .local v0, "arr":[B
    array-length v4, p0

    sub-int v1, v4, p1

    .line 375
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 376
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 375
    goto :goto_0
.end method

.method public static copyOfRange([CII)[C
    .locals 7
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 423
    sub-int v3, p2, p1

    .line 424
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    :cond_0
    new-array v0, v3, [C

    .line 426
    .local v0, "arr":[C
    array-length v4, p0

    sub-int v1, v4, p1

    .line 427
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 428
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 427
    goto :goto_0
.end method

.method public static copyOfRange([DII)[D
    .locals 7
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 449
    sub-int v3, p2, p1

    .line 450
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    :cond_0
    new-array v0, v3, [D

    .line 452
    .local v0, "arr":[D
    array-length v4, p0

    sub-int v1, v4, p1

    .line 453
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 454
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 453
    goto :goto_0
.end method

.method public static copyOfRange([FII)[F
    .locals 7
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 436
    sub-int v3, p2, p1

    .line 437
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 438
    :cond_0
    new-array v0, v3, [F

    .line 439
    .local v0, "arr":[F
    array-length v4, p0

    sub-int v1, v4, p1

    .line 440
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 441
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 440
    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 7
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 397
    sub-int v3, p2, p1

    .line 398
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    :cond_0
    new-array v0, v3, [I

    .line 400
    .local v0, "arr":[I
    array-length v4, p0

    sub-int v1, v4, p1

    .line 401
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 402
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 401
    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 7
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 410
    sub-int v3, p2, p1

    .line 411
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_0
    new-array v0, v3, [J

    .line 413
    .local v0, "arr":[J
    array-length v4, p0

    sub-int v1, v4, p1

    .line 414
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 415
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 414
    goto :goto_0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "newType"    # Ljava/lang/Class;

    .prologue
    .line 357
    sub-int v3, p2, p1

    .line 358
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 359
    :cond_0
    sget-object v4, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "[Ljava.lang.Object;"

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/Arrays;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_0
    if-ne p3, v4, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 361
    .local v0, "arr":[Ljava/lang/Object;
    :goto_1
    array-length v4, p0

    sub-int v1, v4, p1

    .line 362
    .local v1, "ceil":I
    if-ge v1, v3, :cond_3

    move v2, v1

    .line 363
    .local v2, "len":I
    :goto_2
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    return-object v0

    .line 359
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "ceil":I
    .end local v2    # "len":I
    :cond_1
    sget-object v4, Ledu/emory/mathcs/backport/java/util/Arrays;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    goto :goto_1

    .restart local v0    # "arr":[Ljava/lang/Object;
    .restart local v1    # "ceil":I
    :cond_3
    move v2, v3

    .line 362
    goto :goto_2
.end method

.method public static copyOfRange([SII)[S
    .locals 7
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 384
    sub-int v3, p2, p1

    .line 385
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    :cond_0
    new-array v0, v3, [S

    .line 387
    .local v0, "arr":[S
    array-length v4, p0

    sub-int v1, v4, p1

    .line 388
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 389
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 388
    goto :goto_0
.end method

.method public static copyOfRange([ZII)[Z
    .locals 7
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 462
    sub-int v3, p2, p1

    .line 463
    .local v3, "newLength":I
    if-gez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :cond_0
    new-array v0, v3, [Z

    .line 465
    .local v0, "arr":[Z
    array-length v4, p0

    sub-int v1, v4, p1

    .line 466
    .local v1, "ceil":I
    if-ge v1, v3, :cond_1

    move v2, v1

    .line 467
    .local v2, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    return-object v0

    .end local v2    # "len":I
    :cond_1
    move v2, v3

    .line 466
    goto :goto_0
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 9
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 615
    if-ne p0, p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v5

    .line 616
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v5, v6

    goto :goto_0

    .line 617
    :cond_3
    array-length v4, p0

    .line 618
    .local v4, "len":I
    array-length v7, p1

    if-eq v4, v7, :cond_4

    move v5, v6

    goto :goto_0

    .line 619
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 620
    aget-object v0, p0, v3

    .line 621
    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v3

    .line 622
    .local v1, "e2":Ljava/lang/Object;
    if-ne v0, v1, :cond_6

    .line 619
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 623
    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_6
    if-nez v0, :cond_7

    move v5, v6

    goto :goto_0

    .line 624
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 647
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    .local v2, "eq":Z
    :goto_2
    if-nez v2, :cond_5

    move v5, v6

    goto :goto_0

    .line 624
    .end local v2    # "eq":Z
    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_9
    instance-of v7, v0, [Ljava/lang/Object;

    if-eqz v7, :cond_a

    instance-of v7, v1, [Ljava/lang/Object;

    if-eqz v7, :cond_a

    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_a
    instance-of v7, v0, [B

    if-eqz v7, :cond_b

    instance-of v7, v1, [B

    if-eqz v7, :cond_b

    check-cast v0, [B

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [B

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_b
    instance-of v7, v0, [S

    if-eqz v7, :cond_c

    instance-of v7, v1, [S

    if-eqz v7, :cond_c

    check-cast v0, [S

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [S

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([S[S)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_c
    instance-of v7, v0, [I

    if-eqz v7, :cond_d

    instance-of v7, v1, [I

    if-eqz v7, :cond_d

    check-cast v0, [I

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [I

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_d
    instance-of v7, v0, [J

    if-eqz v7, :cond_e

    instance-of v7, v1, [J

    if-eqz v7, :cond_e

    check-cast v0, [J

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [J

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([J[J)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_e
    instance-of v7, v0, [C

    if-eqz v7, :cond_f

    instance-of v7, v1, [C

    if-eqz v7, :cond_f

    check-cast v0, [C

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [C

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_f
    instance-of v7, v0, [Z

    if-eqz v7, :cond_10

    instance-of v7, v1, [Z

    if-eqz v7, :cond_10

    check-cast v0, [Z

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [Z

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_10
    instance-of v7, v0, [F

    if-eqz v7, :cond_11

    instance-of v7, v1, [F

    if-eqz v7, :cond_11

    check-cast v0, [F

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [F

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_11
    instance-of v7, v0, [D

    if-eqz v7, :cond_12

    instance-of v7, v1, [D

    if-eqz v7, :cond_12

    check-cast v0, [D

    .end local v0    # "e1":Ljava/lang/Object;
    check-cast v1, [D

    .end local v1    # "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_2

    .restart local v0    # "e1":Ljava/lang/Object;
    .restart local v1    # "e2":Ljava/lang/Object;
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_2
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 591
    if-nez p0, :cond_0

    .line 607
    :goto_0
    return v4

    .line 592
    :cond_0
    const/4 v1, 0x1

    .line 593
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_b

    .line 594
    aget-object v0, p0, v2

    .line 595
    .local v0, "e":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    instance-of v3, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    :goto_2
    add-int v1, v5, v3

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 595
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_1
    instance-of v3, v0, [B

    if-eqz v3, :cond_2

    check-cast v0, [B

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([B)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_2
    instance-of v3, v0, [S

    if-eqz v3, :cond_3

    check-cast v0, [S

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([S)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_3
    instance-of v3, v0, [I

    if-eqz v3, :cond_4

    check-cast v0, [I

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([I)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_4
    instance-of v3, v0, [J

    if-eqz v3, :cond_5

    check-cast v0, [J

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([J)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_5
    instance-of v3, v0, [C

    if-eqz v3, :cond_6

    check-cast v0, [C

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([C)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_6
    instance-of v3, v0, [Z

    if-eqz v3, :cond_7

    check-cast v0, [Z

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([Z)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_7
    instance-of v3, v0, [F

    if-eqz v3, :cond_8

    check-cast v0, [F

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([F)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_8
    instance-of v3, v0, [D

    if-eqz v3, :cond_9

    check-cast v0, [D

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->hashCode([D)I

    move-result v3

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Object;
    :cond_b
    move v4, v1

    .line 607
    goto :goto_0
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 773
    if-nez p0, :cond_0

    const-string v1, "null"

    .line 776
    :goto_0
    return-object v1

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 775
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, v1}, Ledu/emory/mathcs/backport/java/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static deepToString([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "seen"    # Ljava/util/List;

    .prologue
    .line 780
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_d

    .line 783
    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 784
    :cond_0
    aget-object v0, p0, v1

    .line 785
    .local v0, "e":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 786
    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    .end local v0    # "e":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 791
    :cond_2
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 792
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "[...]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 793
    :cond_3
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/util/List;)V

    goto :goto_1

    .line 797
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_4
    instance-of v2, v0, [B

    if-eqz v2, :cond_5

    check-cast v0, [B

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_5
    instance-of v2, v0, [S

    if-eqz v2, :cond_6

    check-cast v0, [S

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_6
    instance-of v2, v0, [I

    if-eqz v2, :cond_7

    check-cast v0, [I

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_7
    instance-of v2, v0, [J

    if-eqz v2, :cond_8

    check-cast v0, [J

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_8
    instance-of v2, v0, [C

    if-eqz v2, :cond_9

    check-cast v0, [C

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_9
    instance-of v2, v0, [Z

    if-eqz v2, :cond_a

    check-cast v0, [Z

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_a
    instance-of v2, v0, [F

    if-eqz v2, :cond_b

    check-cast v0, [F

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_b
    instance-of v2, v0, [D

    if-eqz v2, :cond_c

    check-cast v0, [D

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Object;
    :cond_c
    const-string v2, ""

    goto :goto_2

    .line 808
    .end local v0    # "e":Ljava/lang/Object;
    :cond_d
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 809
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 810
    return-void
.end method

.method public static equals([B[B)Z
    .locals 1
    .param p0, "a"    # [B
    .param p1, "a2"    # [B

    .prologue
    .line 150
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static equals([C[C)Z
    .locals 1
    .param p0, "a"    # [C
    .param p1, "a2"    # [C

    .prologue
    .line 146
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static equals([D[D)Z
    .locals 1
    .param p0, "a"    # [D
    .param p1, "a2"    # [D

    .prologue
    .line 158
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0
.end method

.method public static equals([F[F)Z
    .locals 1
    .param p0, "a"    # [F
    .param p1, "a2"    # [F

    .prologue
    .line 162
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public static equals([I[I)Z
    .locals 1
    .param p0, "a"    # [I
    .param p1, "a2"    # [I

    .prologue
    .line 138
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static equals([J[J)Z
    .locals 1
    .param p0, "a"    # [J
    .param p1, "a2"    # [J

    .prologue
    .line 134
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .prologue
    .line 166
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equals([S[S)Z
    .locals 1
    .param p0, "a"    # [S
    .param p1, "a2"    # [S

    .prologue
    .line 142
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static equals([Z[Z)Z
    .locals 1
    .param p0, "a"    # [Z
    .param p1, "a2"    # [Z

    .prologue
    .line 154
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static fill([BB)V
    .locals 0
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .prologue
    .line 205
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 206
    return-void
.end method

.method public static fill([BIIB)V
    .locals 0
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .prologue
    .line 209
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 210
    return-void
.end method

.method public static fill([CC)V
    .locals 0
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .prologue
    .line 197
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 198
    return-void
.end method

.method public static fill([CIIC)V
    .locals 0
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .prologue
    .line 201
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 202
    return-void
.end method

.method public static fill([DD)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "val"    # D

    .prologue
    .line 222
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    .line 223
    return-void
.end method

.method public static fill([DIID)V
    .locals 1
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # D

    .prologue
    .line 226
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([DIID)V

    .line 227
    return-void
.end method

.method public static fill([FF)V
    .locals 0
    .param p0, "a"    # [F
    .param p1, "val"    # F

    .prologue
    .line 230
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 231
    return-void
.end method

.method public static fill([FIIF)V
    .locals 0
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # F

    .prologue
    .line 234
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 235
    return-void
.end method

.method public static fill([II)V
    .locals 0
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .prologue
    .line 181
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 182
    return-void
.end method

.method public static fill([IIII)V
    .locals 0
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .prologue
    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 186
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 1
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .prologue
    .line 177
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 178
    return-void
.end method

.method public static fill([JJ)V
    .locals 1
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .prologue
    .line 173
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 174
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 242
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 238
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public static fill([SIIS)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .prologue
    .line 193
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    .line 194
    return-void
.end method

.method public static fill([SS)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .prologue
    .line 189
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    .line 190
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 0
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .prologue
    .line 218
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 219
    return-void
.end method

.method public static fill([ZZ)V
    .locals 0
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .prologue
    .line 213
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 214
    return-void
.end method

.method public static hashCode([B)I
    .locals 4
    .param p0, "a"    # [B

    .prologue
    .line 529
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 534
    :cond_0
    return v0

    .line 530
    :cond_1
    const/4 v0, 0x1

    .line 531
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 532
    mul-int/lit8 v2, v0, 0x1f

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 4
    .param p0, "a"    # [C

    .prologue
    .line 517
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 522
    :cond_0
    return v0

    .line 518
    :cond_1
    const/4 v0, 0x1

    .line 519
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 520
    mul-int/lit8 v2, v0, 0x1f

    aget-char v3, p0, v1

    add-int v0, v2, v3

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 8
    .param p0, "a"    # [D

    .prologue
    .line 565
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 571
    :cond_0
    return v2

    .line 566
    :cond_1
    const/4 v2, 0x1

    .line 567
    .local v2, "hash":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 568
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 569
    .local v0, "e":J
    mul-int/lit8 v4, v2, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v0, v5

    xor-long/2addr v6, v0

    long-to-int v5, v6

    add-int v2, v4, v5

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 4
    .param p0, "a"    # [F

    .prologue
    .line 553
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 558
    :cond_0
    return v0

    .line 554
    :cond_1
    const/4 v0, 0x1

    .line 555
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 556
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v2, v3

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 4
    .param p0, "a"    # [I

    .prologue
    .line 493
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 498
    :cond_0
    return v0

    .line 494
    :cond_1
    const/4 v0, 0x1

    .line 495
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 496
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 8
    .param p0, "a"    # [J

    .prologue
    .line 480
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 486
    :cond_0
    return v2

    .line 481
    :cond_1
    const/4 v2, 0x1

    .line 482
    .local v2, "hash":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 483
    aget-wide v0, p0, v3

    .line 484
    .local v0, "e":J
    mul-int/lit8 v4, v2, 0x1f

    const/16 v5, 0x20

    ushr-long v6, v0, v5

    xor-long/2addr v6, v0

    long-to-int v5, v6

    add-int v2, v4, v5

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 578
    if-nez p0, :cond_0

    .line 584
    :goto_0
    return v4

    .line 579
    :cond_0
    const/4 v1, 0x1

    .line 580
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 581
    aget-object v0, p0, v2

    .line 582
    .local v0, "e":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    if-nez v0, :cond_1

    move v3, v4

    :goto_2
    add-int v1, v5, v3

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 582
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Object;
    :cond_2
    move v4, v1

    .line 584
    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 4
    .param p0, "a"    # [S

    .prologue
    .line 505
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 510
    :cond_0
    return v0

    .line 506
    :cond_1
    const/4 v0, 0x1

    .line 507
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 508
    mul-int/lit8 v2, v0, 0x1f

    aget-short v3, p0, v1

    add-int v0, v2, v3

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 4
    .param p0, "a"    # [Z

    .prologue
    .line 541
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 546
    :cond_0
    return v0

    .line 542
    :cond_1
    const/4 v0, 0x1

    .line 543
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 544
    mul-int/lit8 v3, v0, 0x1f

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_1
    add-int v0, v3, v2

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_1
.end method

.method public static sort([B)V
    .locals 0
    .param p0, "a"    # [B

    .prologue
    .line 51
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    .line 52
    return-void
.end method

.method public static sort([BII)V
    .locals 0
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 56
    return-void
.end method

.method public static sort([C)V
    .locals 0
    .param p0, "a"    # [C

    .prologue
    .line 43
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    .line 44
    return-void
.end method

.method public static sort([CII)V
    .locals 0
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([CII)V

    .line 48
    return-void
.end method

.method public static sort([D)V
    .locals 0
    .param p0, "a"    # [D

    .prologue
    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 60
    return-void
.end method

.method public static sort([DII)V
    .locals 0
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([DII)V

    .line 64
    return-void
.end method

.method public static sort([F)V
    .locals 0
    .param p0, "a"    # [F

    .prologue
    .line 67
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    .line 68
    return-void
.end method

.method public static sort([FII)V
    .locals 0
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([FII)V

    .line 72
    return-void
.end method

.method public static sort([I)V
    .locals 0
    .param p0, "a"    # [I

    .prologue
    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 28
    return-void
.end method

.method public static sort([III)V
    .locals 0
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    .line 32
    return-void
.end method

.method public static sort([J)V
    .locals 0
    .param p0, "a"    # [J

    .prologue
    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    .line 20
    return-void
.end method

.method public static sort([JII)V
    .locals 0
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 24
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 76
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 81
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "c"    # Ljava/util/Comparator;

    .prologue
    .line 88
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 89
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "c"    # Ljava/util/Comparator;

    .prologue
    .line 84
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 85
    return-void
.end method

.method public static sort([S)V
    .locals 0
    .param p0, "a"    # [S

    .prologue
    .line 35
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    .line 36
    return-void
.end method

.method public static sort([SII)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([SII)V

    .line 40
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [B

    .prologue
    .line 708
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 714
    :goto_0
    return-object v2

    .line 709
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 710
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 711
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 712
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-byte v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 713
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [C

    .prologue
    .line 695
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 701
    :goto_0
    return-object v2

    .line 696
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 697
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 698
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-char v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 699
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-char v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 700
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [D

    .prologue
    .line 747
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 753
    :goto_0
    return-object v2

    .line 748
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 749
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 751
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-wide v4, p0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 752
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [F

    .prologue
    .line 734
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 740
    :goto_0
    return-object v2

    .line 735
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 736
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 737
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 738
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 739
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [I

    .prologue
    .line 669
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 675
    :goto_0
    return-object v2

    .line 670
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 673
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 674
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [J

    .prologue
    .line 656
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 662
    :goto_0
    return-object v2

    .line 657
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 658
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 660
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-wide v4, p0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 760
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 766
    :goto_0
    return-object v2

    .line 761
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 762
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 763
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 764
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [S

    .prologue
    .line 682
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 688
    :goto_0
    return-object v2

    .line 683
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 684
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-short v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 686
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-short v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Z

    .prologue
    .line 721
    if-nez p0, :cond_0

    const-string v2, "null"

    .line 727
    :goto_0
    return-object v2

    .line 722
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    const-string v2, "[]"

    goto :goto_0

    .line 723
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-boolean v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 725
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-boolean v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 726
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
