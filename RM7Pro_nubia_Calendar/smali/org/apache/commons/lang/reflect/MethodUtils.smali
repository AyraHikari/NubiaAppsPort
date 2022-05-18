.class public Lorg/apache/commons/lang/reflect/MethodUtils;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterType"    # Ljava/lang/Class;

    .prologue
    .line 486
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 505
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 508
    :goto_0
    return-object v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 521
    invoke-static {p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    const/4 p0, 0x0

    .line 541
    .local v0, "cls":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p0

    .line 525
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 526
    .restart local v0    # "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 533
    .local v2, "parameterTypes":[Ljava/lang/Class;
    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 537
    if-nez p0, :cond_0

    .line 538
    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0
.end method

.method private static getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 590
    .local v2, "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p0, :cond_4

    .line 593
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 594
    .local v1, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 596
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    :cond_1
    :try_start_0
    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 609
    :goto_2
    if-eqz v2, :cond_3

    .line 590
    :cond_2
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 613
    :cond_3
    aget-object v3, v1, v0

    invoke-static {v3, p1, p2}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 615
    if-eqz v2, :cond_0

    goto :goto_3

    .line 620
    .end local v0    # "i":I
    .end local v1    # "interfaces":[Ljava/lang/Class;
    :cond_4
    return-object v2

    .line 603
    .restart local v0    # "i":I
    .restart local v1    # "interfaces":[Ljava/lang/Class;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 557
    .local v1, "parentClass":Ljava/lang/Class;
    :goto_0
    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 567
    :cond_0
    :goto_1
    return-object v2

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 565
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 646
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 647
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-static {v3}, Lorg/apache/commons/lang/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 649
    :catch_0
    move-exception v6

    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, "bestMatch":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 654
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v4

    .local v5, "size":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 655
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p2, v6, v7}, Lorg/apache/commons/lang/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    aget-object v6, v4, v2

    invoke-static {v6}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 661
    .local v0, "accessibleMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 662
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lorg/apache/commons/lang/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v6

    if-gez v6, :cond_1

    .line 667
    :cond_0
    move-object v1, v0

    .line 654
    .end local v0    # "accessibleMethod":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    :cond_2
    if-eqz v1, :cond_3

    .line 674
    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V

    :cond_3
    move-object v3, v1

    .line 676
    goto :goto_0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 222
    :cond_0
    array-length v0, p2

    .line 223
    .local v0, "arguments":I
    new-array v2, v0, [Ljava/lang/Class;

    .line 224
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p2, :cond_0

    .line 254
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 256
    :cond_0
    if-nez p3, :cond_1

    .line 257
    sget-object p3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 261
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2

    .line 262
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "() on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_2
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 461
    if-nez p2, :cond_0

    .line 462
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 464
    :cond_0
    array-length v0, p2

    .line 465
    .local v0, "arguments":I
    new-array v2, v0, [Ljava/lang/Class;

    .line 466
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_1
    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 293
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 295
    :cond_0
    if-nez p3, :cond_1

    .line 296
    sget-object p3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 298
    :cond_1
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 299
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2

    .line 300
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 126
    :cond_0
    array-length v0, p2

    .line 127
    .local v0, "arguments":I
    new-array v2, v0, [Ljava/lang/Class;

    .line 128
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p3, :cond_0

    .line 158
    sget-object p3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lorg/apache/commons/lang/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2

    .line 166
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "() on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_2
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 363
    if-nez p2, :cond_0

    .line 364
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 366
    :cond_0
    array-length v0, p2

    .line 367
    .local v0, "arguments":I
    new-array v2, v0, [Ljava/lang/Class;

    .line 368
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 369
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 400
    if-nez p3, :cond_0

    .line 401
    sget-object p3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 403
    :cond_0
    if-nez p2, :cond_1

    .line 404
    sget-object p2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 406
    :cond_1
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 408
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2

    .line 409
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
