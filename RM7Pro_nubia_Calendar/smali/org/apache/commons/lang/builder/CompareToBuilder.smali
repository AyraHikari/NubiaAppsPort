.class public Lorg/apache/commons/lang/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 110
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 355
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 356
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 357
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget v4, p3, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v4, :cond_2

    .line 358
    aget-object v1, v2, v3

    .line 359
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

    .line 364
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 205
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 317
    if-ne p0, p1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    .line 320
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 324
    .local v2, "lhsClazz":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 325
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 327
    :cond_3
    new-instance v3, Lorg/apache/commons/lang/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang/builder/CompareToBuilder;-><init>()V

    .local v3, "compareToBuilder":Lorg/apache/commons/lang/builder/CompareToBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 328
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 329
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    .line 330
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 331
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 565
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return-object p0

    .line 568
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 549
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-object p0

    .line 552
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 586
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-object p0

    .line 589
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 607
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 611
    :goto_0
    return-object p0

    .line 610
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 517
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-object p0

    .line 520
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 501
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-object p0

    .line 504
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .prologue
    .line 441
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    .line 488
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 444
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 447
    if-nez p1, :cond_2

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 451
    :cond_2
    if-nez p2, :cond_3

    .line 452
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 460
    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [J

    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 461
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 462
    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [I

    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 463
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    .line 464
    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [S

    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 465
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 466
    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [C

    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 467
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 468
    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 469
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 470
    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [D

    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 471
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    .line 472
    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [F

    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 473
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    .line 474
    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Z

    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 478
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 482
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    if-nez p3, :cond_d

    .line 483
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "lhs":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0

    .line 485
    .restart local p1    # "lhs":Ljava/lang/Object;
    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 533
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-object p0

    .line 536
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 623
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-object p0

    .line 626
    :cond_1
    if-eq p1, p2, :cond_0

    .line 629
    if-nez p1, :cond_2

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 632
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 886
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-object p0

    .line 889
    :cond_1
    if-eq p1, p2, :cond_0

    .line 892
    if-nez p1, :cond_2

    .line 893
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 896
    :cond_2
    if-nez p2, :cond_3

    .line 897
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 900
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 901
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 904
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 905
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 846
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-object p0

    .line 849
    :cond_1
    if-eq p1, p2, :cond_0

    .line 852
    if-nez p1, :cond_2

    .line 853
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 856
    :cond_2
    if-nez p2, :cond_3

    .line 857
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 860
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 861
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 864
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 865
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 926
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-object p0

    .line 929
    :cond_1
    if-eq p1, p2, :cond_0

    .line 932
    if-nez p1, :cond_2

    .line 933
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 936
    :cond_2
    if-nez p2, :cond_3

    .line 937
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 940
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 941
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 944
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 945
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 966
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-object p0

    .line 969
    :cond_1
    if-eq p1, p2, :cond_0

    .line 972
    if-nez p1, :cond_2

    .line 973
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 976
    :cond_2
    if-nez p2, :cond_3

    .line 977
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 980
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 981
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 984
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 985
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 766
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-object p0

    .line 769
    :cond_1
    if-eq p1, p2, :cond_0

    .line 772
    if-nez p1, :cond_2

    .line 773
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 776
    :cond_2
    if-nez p2, :cond_3

    .line 777
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 780
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 781
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 784
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 785
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 726
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-object p0

    .line 729
    :cond_1
    if-eq p1, p2, :cond_0

    .line 732
    if-nez p1, :cond_2

    .line 733
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 736
    :cond_2
    if-nez p2, :cond_3

    .line 737
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 740
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 741
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 744
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 745
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 686
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-object p0

    .line 689
    :cond_1
    if-eq p1, p2, :cond_0

    .line 692
    if-nez p1, :cond_2

    .line 693
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 696
    :cond_2
    if-nez p2, :cond_3

    .line 697
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 700
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 701
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 704
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 705
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 806
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-object p0

    .line 809
    :cond_1
    if-eq p1, p2, :cond_0

    .line 812
    if-nez p1, :cond_2

    .line 813
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 816
    :cond_2
    if-nez p2, :cond_3

    .line 817
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 820
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 821
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 824
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 825
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1006
    iget v3, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-object p0

    .line 1009
    :cond_1
    if-eq p1, p2, :cond_0

    .line 1012
    if-nez p1, :cond_2

    .line 1013
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 1016
    :cond_2
    if-nez p2, :cond_3

    .line 1017
    iput v2, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 1020
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 1021
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 1024
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 1025
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "superCompareTo"    # I

    .prologue
    .line 384
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 388
    :goto_0
    return-object p0

    .line 387
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public toComparison()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    return v0
.end method
