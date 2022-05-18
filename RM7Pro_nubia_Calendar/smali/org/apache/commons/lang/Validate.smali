.class public Lorg/apache/commons/lang/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static allElementsOfType(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 5
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 495
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 496
    invoke-static {p1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The validated collection contains an element not of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    return-void
.end method

.method public static allElementsOfType(Ljava/util/Collection;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 468
    invoke-static {p1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 469
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_1
    return-void
.end method

.method public static isTrue(Z)V
    .locals 2
    .param p0, "expression"    # Z

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The validated expression is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;D)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;J)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public static noNullElements(Ljava/util/Collection;)V
    .locals 5
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 443
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 447
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The validated collection contains null element at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_1
    return-void
.end method

.method public static noNullElements(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 417
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_1
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 388
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 390
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The validated array contains null element at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 363
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "The validated string is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 265
    const-string v0, "The validated collection is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/util/Map;)V
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 302
    const-string v0, "The validated map is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/util/Map;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static notEmpty(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 229
    const-string v0, "The validated array is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    return-void
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    const-string v0, "The validated object is null"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    return-void
.end method
