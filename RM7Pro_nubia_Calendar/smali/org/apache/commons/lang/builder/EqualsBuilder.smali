.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 101
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 320
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 321
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget-boolean v4, p3, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v4, :cond_2

    .line 322
    aget-object v1, v2, v3

    .line 323
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 147
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 254
    if-ne p0, p1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 257
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v9

    .line 258
    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 265
    .local v7, "lhsClass":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 267
    .local v8, "rhsClass":Ljava/lang/Class;
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    move-object v2, v7

    .line 269
    .local v2, "testClass":Ljava/lang/Class;
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    move-object v2, v8

    .line 283
    :cond_3
    :goto_1
    new-instance v3, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    .local v3, "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 285
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 286
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v2, p3, :cond_6

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 288
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 290
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move v0, v9

    .line 296
    goto :goto_0

    .line 273
    .end local v2    # "testClass":Ljava/lang/Class;
    .end local v3    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    move-object v2, v8

    .line 275
    .restart local v2    # "testClass":Ljava/lang/Class;
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    move-object v2, v7

    goto :goto_1

    .end local v2    # "testClass":Ljava/lang/Class;
    :cond_5
    move v0, v9

    .line 281
    goto :goto_0

    .line 298
    .restart local v2    # "testClass":Ljava/lang/Class;
    .restart local v3    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_6
    invoke-virtual {v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 481
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-object p0

    .line 484
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-object p0

    .line 469
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 505
    .end local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 525
    .end local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/lang/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 436
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-object p0

    .line 439
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 421
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-object p0

    .line 424
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 406
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 369
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 372
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 373
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 377
    .local v0, "lhsClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 382
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 386
    :cond_5
    instance-of v1, p1, [J

    if-eqz v1, :cond_6

    .line 387
    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [J

    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 388
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, [I

    if-eqz v1, :cond_7

    .line 389
    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [I

    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 390
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v1, p1, [S

    if-eqz v1, :cond_8

    .line 391
    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [S

    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 392
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, [C

    if-eqz v1, :cond_9

    .line 393
    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [C

    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 394
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v1, p1, [B

    if-eqz v1, :cond_a

    .line 395
    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 396
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, [D

    if-eqz v1, :cond_b

    .line 397
    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [D

    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 398
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, [F

    if-eqz v1, :cond_c

    .line 399
    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [F

    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 400
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, [Z

    if-eqz v1, :cond_d

    .line 401
    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Z

    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 404
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-object p0

    .line 454
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-object p0

    .line 539
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v3, 0x0

    .line 709
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-object p0

    .line 712
    :cond_1
    if-eq p1, p2, :cond_0

    .line 715
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 716
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 719
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 720
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 723
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 724
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-object p0

    .line 681
    :cond_1
    if-eq p1, p2, :cond_0

    .line 684
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 685
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 688
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 689
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 692
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 693
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-object p0

    .line 743
    :cond_1
    if-eq p1, p2, :cond_0

    .line 746
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 747
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 750
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 751
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 754
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 755
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v3, 0x0

    .line 771
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-object p0

    .line 774
    :cond_1
    if-eq p1, p2, :cond_0

    .line 777
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 778
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 781
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 782
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 785
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 786
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object p0

    .line 619
    :cond_1
    if-eq p1, p2, :cond_0

    .line 622
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 623
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 626
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 627
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 630
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 631
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v3, 0x0

    .line 585
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object p0

    .line 588
    :cond_1
    if-eq p1, p2, :cond_0

    .line 591
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 592
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 595
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 596
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 599
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 600
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-object p0

    .line 557
    :cond_1
    if-eq p1, p2, :cond_0

    .line 560
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 561
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 564
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 565
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 568
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 569
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v3, 0x0

    .line 647
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-object p0

    .line 650
    :cond_1
    if-eq p1, p2, :cond_0

    .line 653
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 654
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 657
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 658
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 661
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 662
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-object p0

    .line 805
    :cond_1
    if-eq p1, p2, :cond_0

    .line 808
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 809
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 812
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 813
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 816
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 817
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-object p0

    .line 351
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 848
    return-void
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 840
    return-void
.end method
