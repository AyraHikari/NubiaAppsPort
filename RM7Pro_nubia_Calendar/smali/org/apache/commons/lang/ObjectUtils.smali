.class public Lorg/apache/commons/lang/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lorg/apache/commons/lang/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/lang/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ObjectUtils;->NULL:Lorg/apache/commons/lang/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static appendIdentityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 243
    :cond_0
    if-nez p0, :cond_1

    .line 244
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .restart local p0    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 381
    instance-of v5, p0, Ljava/lang/Cloneable;

    if-eqz v5, :cond_0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 385
    .local v0, "componentType":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 386
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    .line 412
    .end local v0    # "componentType":Ljava/lang/Class;
    .local v4, "result":Ljava/lang/Object;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v4

    .line 388
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v0    # "componentType":Ljava/lang/Class;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 389
    .local v2, "length":I
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Object;
    move v3, v2

    .line 390
    .end local v2    # "length":I
    .local v3, "length":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "length":I
    .restart local v2    # "length":I
    if-lez v3, :cond_0

    .line 391
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v3, v2

    .end local v2    # "length":I
    .restart local v3    # "length":I
    goto :goto_1

    .line 396
    .end local v0    # "componentType":Ljava/lang/Class;
    .end local v3    # "length":I
    .end local v4    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_0
    const-string v5, "clone"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lorg/apache/commons/lang/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 397
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Lorg/apache/commons/lang/exception/CloneFailedException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cloneable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " has no clone method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 401
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/apache/commons/lang/exception/CloneFailedException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot clone Cloneable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 404
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lorg/apache/commons/lang/exception/CloneFailedException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Exception cloning Cloneable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/lang/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 429
    invoke-static {p0}, Lorg/apache/commons/lang/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    .local v0, "clone":Ljava/lang/Object;
    if-nez v0, :cond_0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "c1"    # Ljava/lang/Comparable;
    .param p1, "c2"    # Ljava/lang/Comparable;

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .param p0, "c1"    # Ljava/lang/Comparable;
    .param p1, "c2"    # Ljava/lang/Comparable;
    .param p2, "nullGreater"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 362
    if-ne p0, p1, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    if-nez p0, :cond_2

    .line 365
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 366
    :cond_2
    if-nez p1, :cond_4

    .line 367
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 369
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .end local p0    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 119
    if-ne p0, p1, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 166
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 193
    :goto_0
    return-object v1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/apache/commons/lang/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get the toString of a null identity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    return-void
.end method

.method public static max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .param p0, "c1"    # Ljava/lang/Comparable;
    .param p1, "c2"    # Ljava/lang/Comparable;

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p0    # "c1":Ljava/lang/Comparable;
    :goto_0
    return-object p0

    .restart local p0    # "c1":Ljava/lang/Comparable;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .param p0, "c1"    # Ljava/lang/Comparable;
    .param p1, "c2"    # Ljava/lang/Comparable;

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p0    # "c1":Ljava/lang/Comparable;
    :goto_0
    return-object p0

    .restart local p0    # "c1":Ljava/lang/Comparable;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 272
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nullStr"    # Ljava/lang/String;

    .prologue
    .line 295
    if-nez p0, :cond_0

    .end local p1    # "nullStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "nullStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
