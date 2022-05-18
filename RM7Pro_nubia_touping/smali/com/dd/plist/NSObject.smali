.class public abstract Lcom/dd/plist/NSObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final ASCII_LINE_LENGTH:I = 0x50

.field private static final INDENT:Ljava/lang/String; = "\t"

.field static final NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeArray(Lcom/dd/plist/NSObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/NSObject;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 465
    instance-of v1, p1, Lcom/dd/plist/NSArray;

    if-eqz v1, :cond_1

    .line 466
    check-cast p1, Lcom/dd/plist/NSArray;

    invoke-virtual {p1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 467
    array-length v1, v2

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 468
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 469
    aget-object v4, v2, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v0, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 486
    :goto_1
    return-object v0

    .line 474
    :cond_1
    instance-of v1, p1, Lcom/dd/plist/NSSet;

    if-eqz v1, :cond_3

    .line 475
    check-cast p1, Lcom/dd/plist/NSSet;

    invoke-virtual {p1}, Lcom/dd/plist/NSSet;->getSet()Ljava/util/Set;

    move-result-object v1

    .line 476
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 478
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 479
    invoke-direct {p0, v0, v3, v5}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v1, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 480
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 481
    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 482
    goto :goto_1

    .line 485
    :cond_3
    instance-of v0, p1, Lcom/dd/plist/NSData;

    if-eqz v0, :cond_4

    .line 486
    check-cast p1, Lcom/dd/plist/NSData;

    invoke-static {p1, v3}, Lcom/dd/plist/NSObject;->deserializeData(Lcom/dd/plist/NSData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 489
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deserializeArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 453
    check-cast p0, Lcom/dd/plist/NSArray;

    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    .line 454
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 455
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 456
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-object v2
.end method

.method private deserializeCollection(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 410
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    :cond_0
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 426
    :goto_0
    const-class v2, Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    .line 428
    if-eqz p3, :cond_8

    array-length v3, p3

    if-lez v3, :cond_8

    .line 429
    aget-object v2, p3, v4

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_4

    .line 430
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/NSObject;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 431
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 436
    :goto_1
    instance-of v0, p1, Lcom/dd/plist/NSArray;

    if-eqz v0, :cond_5

    .line 437
    check-cast p1, Lcom/dd/plist/NSArray;

    invoke-virtual {p1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v5

    array-length v6, v5

    move v0, v4

    :goto_2
    if-ge v0, v6, :cond_7

    aget-object v4, v5, v0

    .line 438
    invoke-direct {p0, v4, v3, v2}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 414
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 418
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a proper implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_3
    invoke-static {p2}, Lcom/dd/plist/NSObject;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 423
    goto :goto_0

    .line 433
    :cond_4
    aget-object v2, p3, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dd/plist/NSObject;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 443
    :cond_5
    instance-of v0, p1, Lcom/dd/plist/NSSet;

    if-eqz v0, :cond_6

    .line 444
    check-cast p1, Lcom/dd/plist/NSSet;

    invoke-virtual {p1}, Lcom/dd/plist/NSSet;->getSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 445
    invoke-direct {p0, v0, v3, v2}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 449
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown NS* type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_7
    return-object v1

    :cond_8
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1
.end method

.method private static deserializeData(Lcom/dd/plist/NSData;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSData;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 507
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/dd/plist/NSData;->bytes()[B

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 511
    :cond_0
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/dd/plist/NSData;->bytes()[B

    move-result-object v2

    .line 513
    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 514
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 515
    aget-byte v3, v2, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 517
    goto :goto_0

    .line 520
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NSData can only be mapped to byte[] or Byte[]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deserializeDate(Lcom/dd/plist/NSDate;Ljava/lang/Class;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSDate;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 540
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_2
    invoke-static {p1}, Lcom/dd/plist/NSObject;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 551
    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method private deserializeMap(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dd/plist/NSObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 390
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 391
    const/4 v0, 0x0

    .line 392
    if-eqz p2, :cond_4

    array-length v3, p2

    if-le v3, v4, :cond_4

    .line 393
    aget-object v1, p2, v4

    .line 394
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 395
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/NSObject;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 396
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, v0

    .line 401
    :goto_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 402
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-direct {p0, v0, v3, v1}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 386
    :cond_1
    invoke-static {p1}, Lcom/dd/plist/NSObject;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 387
    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/NSObject;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    .line 405
    :cond_3
    return-object v2

    :cond_4
    move-object v3, v1

    move-object v1, v0

    goto :goto_1
.end method

.method private deserializeMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    check-cast p0, Lcom/dd/plist/NSDictionary;

    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->getHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 370
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 371
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSObject;

    invoke-virtual {v1}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_0
    return-object v3
.end method

.method private deserializeNumber()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 556
    check-cast p0, Lcom/dd/plist/NSNumber;

    .line 557
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    .line 559
    :pswitch_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    .line 560
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 561
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 567
    :pswitch_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 570
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static deserializeNumber(Lcom/dd/plist/NSNumber;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSNumber;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->isInteger()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 580
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    .line 584
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_3

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 589
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_5

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_6

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_7

    .line 596
    :cond_6
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_7
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->isReal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_9

    .line 602
    :cond_8
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_a

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 607
    :cond_a
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_b
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 612
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_d

    .line 613
    :cond_c
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map NSNumber to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deserializeObject(Lcom/dd/plist/NSDictionary;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSDictionary;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1}, Lcom/dd/plist/NSDictionary;->getHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 325
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-direct {p0, p2, p3, v1}, Lcom/dd/plist/NSObject;->deserializeMap(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 329
    :cond_0
    invoke-static {p2}, Lcom/dd/plist/NSObject;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 331
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 332
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v7, v2, v0

    .line 334
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 335
    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 336
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_2
    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 338
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 339
    :cond_3
    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 340
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 344
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Method;

    .line 346
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 347
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 349
    const/4 v4, 0x0

    .line 350
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 351
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_6

    .line 352
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v4, v0

    .line 356
    :cond_6
    const/4 v0, 0x1

    :try_start_0
    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    invoke-direct {p0, v0, v8, v4}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v2, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 357
    :catch_0
    move-exception v0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access setter "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_1
    move-exception v0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke setter "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v3

    .line 365
    goto/16 :goto_0
.end method

.method private deserializeSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    check-cast p0, Lcom/dd/plist/NSSet;

    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->getSet()Ljava/util/Set;

    move-result-object v2

    .line 495
    instance-of v0, v2, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v1, v0

    .line 500
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 501
    invoke-virtual {v0}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 498
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 503
    :cond_1
    return-object v1
.end method

.method private static deserializeSimple(Lcom/dd/plist/NSObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 524
    instance-of v0, p0, Lcom/dd/plist/NSNumber;

    if-eqz v0, :cond_0

    .line 525
    check-cast p0, Lcom/dd/plist/NSNumber;

    invoke-static {p0, p1}, Lcom/dd/plist/NSObject;->deserializeNumber(Lcom/dd/plist/NSNumber;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 528
    :cond_0
    instance-of v0, p0, Lcom/dd/plist/NSDate;

    if-eqz v0, :cond_1

    .line 529
    check-cast p0, Lcom/dd/plist/NSDate;

    invoke-static {p0, p1}, Lcom/dd/plist/NSObject;->deserializeDate(Lcom/dd/plist/NSDate;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_1
    instance-of v0, p0, Lcom/dd/plist/NSString;

    if-eqz v0, :cond_2

    .line 533
    check-cast p0, Lcom/dd/plist/NSString;

    invoke-virtual {p0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fromArray(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/dd/plist/NSObject;"
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 718
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_1

    .line 719
    :cond_0
    invoke-static {p0}, Lcom/dd/plist/NSObject;->fromData(Ljava/lang/Object;)Lcom/dd/plist/NSData;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 722
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 723
    new-array v2, v1, [Lcom/dd/plist/NSObject;

    .line 724
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 725
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v3

    aput-object v3, v2, v0

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_2
    new-instance v0, Lcom/dd/plist/NSArray;

    invoke-direct {v0, v2}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    goto :goto_0
.end method

.method private static fromCollection(Ljava/util/Collection;)Lcom/dd/plist/NSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/dd/plist/NSArray;"
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 743
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 744
    invoke-static {v2}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    :cond_0
    new-instance v1, Lcom/dd/plist/NSArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/plist/NSObject;

    invoke-direct {v1, v0}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    return-object v1
.end method

.method private static fromData(Ljava/lang/Object;)Lcom/dd/plist/NSData;
    .locals 4

    .prologue
    .line 732
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 733
    new-array v3, v2, [B

    .line 734
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 735
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    .line 734
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 738
    :cond_0
    new-instance v0, Lcom/dd/plist/NSData;

    invoke-direct {v0, v3}, Lcom/dd/plist/NSData;-><init>([B)V

    return-object v0
.end method

.method public static fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    const/4 p0, 0x0

    .line 231
    :goto_0
    return-object p0

    .line 200
    :cond_0
    instance-of v0, p0, Lcom/dd/plist/NSObject;

    if-eqz v0, :cond_1

    .line 201
    check-cast p0, Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {p0, v0}, Lcom/dd/plist/NSObject;->fromArray(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSObject;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {v0}, Lcom/dd/plist/NSObject;->isSimple(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    invoke-static {p0, v0}, Lcom/dd/plist/NSObject;->fromSimple(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSObject;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_3
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/dd/plist/NSObject;->fromSet(Ljava/util/Set;)Lcom/dd/plist/NSSet;

    move-result-object p0

    goto :goto_0

    .line 220
    :cond_4
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/dd/plist/NSObject;->fromMap(Ljava/util/Map;)Lcom/dd/plist/NSDictionary;

    move-result-object p0

    goto :goto_0

    .line 225
    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/dd/plist/NSObject;->fromCollection(Ljava/util/Collection;)Lcom/dd/plist/NSArray;

    move-result-object p0

    goto :goto_0

    .line 231
    :cond_6
    invoke-static {p0, v0}, Lcom/dd/plist/NSObject;->fromPojo(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSDictionary;

    move-result-object p0

    goto :goto_0
.end method

.method private static fromMap(Ljava/util/Map;)Lcom/dd/plist/NSDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/dd/plist/NSDictionary;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v2, Lcom/dd/plist/NSDictionary;

    invoke-direct {v2}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 706
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 707
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maps need a String key for mapping to NSDictionary."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 713
    :cond_1
    return-object v2
.end method

.method private static fromPojo(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSDictionary;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/dd/plist/NSDictionary;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 662
    new-instance v3, Lcom/dd/plist/NSDictionary;

    invoke-direct {v3}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 664
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 665
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 664
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 671
    const-string v7, "get"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 672
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    :goto_2
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access getter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_2
    const-string v7, "is"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 674
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/NSObject;->makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 684
    :catch_1
    move-exception v0

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not invoke getter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_5

    aget-object v4, v1, v0

    .line 690
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 689
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 695
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 696
    :catch_2
    move-exception v0

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_5
    return-object v3
.end method

.method private static fromSet(Ljava/util/Set;)Lcom/dd/plist/NSSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/dd/plist/NSSet;"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lcom/dd/plist/NSSet;

    invoke-direct {v0}, Lcom/dd/plist/NSSet;-><init>()V

    .line 752
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 753
    invoke-static {v2}, Lcom/dd/plist/NSObject;->fromJavaObject(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    goto :goto_0

    .line 756
    :cond_0
    return-object v0
.end method

.method private static fromSimple(Ljava/lang/Object;Ljava/lang/Class;)Lcom/dd/plist/NSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/dd/plist/NSObject;"
        }
    .end annotation

    .prologue
    .line 622
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 623
    :cond_0
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dd/plist/NSNumber;-><init>(J)V

    .line 655
    :goto_0
    return-object v0

    .line 626
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 627
    :cond_2
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(I)V

    goto :goto_0

    .line 630
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 631
    :cond_4
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(I)V

    goto :goto_0

    .line 634
    :cond_5
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 635
    :cond_6
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(I)V

    goto :goto_0

    .line 638
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 639
    :cond_8
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dd/plist/NSNumber;-><init>(D)V

    goto :goto_0

    .line 642
    :cond_9
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    .line 643
    :cond_a
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Lcom/dd/plist/NSNumber;-><init>(D)V

    goto :goto_0

    .line 646
    :cond_b
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    .line 647
    :cond_c
    new-instance v0, Lcom/dd/plist/NSNumber;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_0

    .line 650
    :cond_d
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 651
    new-instance v0, Lcom/dd/plist/NSDate;

    check-cast p0, Ljava/util/Date;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSDate;-><init>(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 654
    :cond_e
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_f

    .line 655
    new-instance v0, Lcom/dd/plist/NSString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a simple type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 253
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 254
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 258
    :cond_0
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 281
    :goto_0
    return-object v0

    .line 261
    :cond_1
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 270
    :cond_4
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 273
    :cond_5
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 276
    :cond_6
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 281
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSimple(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Number;

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/util/Date;

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFirstCharLowercase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 289
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 290
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/dd/plist/NSObject;->deserializeArray(Lcom/dd/plist/NSObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 299
    :cond_0
    invoke-static {p2}, Lcom/dd/plist/NSObject;->isSimple(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {p1, p2}, Lcom/dd/plist/NSObject;->deserializeSimple(Lcom/dd/plist/NSObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    instance-of v0, p1, Lcom/dd/plist/NSSet;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/dd/plist/NSArray;

    if-nez v0, :cond_2

    .line 304
    invoke-static {p1, p2}, Lcom/dd/plist/NSObject;->deserializeSimple(Lcom/dd/plist/NSObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_2
    instance-of v0, p1, Lcom/dd/plist/NSSet;

    if-eqz v0, :cond_3

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/dd/plist/NSObject;->deserializeCollection(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    instance-of v0, p1, Lcom/dd/plist/NSArray;

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/dd/plist/NSObject;->deserializeCollection(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_4
    instance-of v0, p1, Lcom/dd/plist/NSDictionary;

    if-eqz v0, :cond_5

    .line 316
    check-cast p1, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, p1, p2, p3}, Lcom/dd/plist/NSObject;->deserializeObject(Lcom/dd/plist/NSDictionary;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->assignID(Lcom/dd/plist/NSObject;)V

    .line 79
    return-void
.end method

.method public abstract clone()Lcom/dd/plist/NSObject;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/dd/plist/NSObject;->clone()Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method indent(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 136
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method protected abstract toASCII(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
.end method

.method abstract toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
.end method

.method public toJavaObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    instance-of v0, p0, Lcom/dd/plist/NSArray;

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/dd/plist/NSObject;->deserializeArray()[Ljava/lang/Object;

    move-result-object p0

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 156
    :cond_1
    instance-of v0, p0, Lcom/dd/plist/NSDictionary;

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/dd/plist/NSObject;->deserializeMap()Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_2
    instance-of v0, p0, Lcom/dd/plist/NSSet;

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/dd/plist/NSObject;->deserializeSet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_3
    instance-of v0, p0, Lcom/dd/plist/NSNumber;

    if-eqz v0, :cond_4

    .line 161
    invoke-direct {p0}, Lcom/dd/plist/NSObject;->deserializeNumber()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_4
    instance-of v0, p0, Lcom/dd/plist/NSString;

    if-eqz v0, :cond_5

    .line 163
    check-cast p0, Lcom/dd/plist/NSString;

    invoke-virtual {p0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_5
    instance-of v0, p0, Lcom/dd/plist/NSData;

    if-eqz v0, :cond_6

    .line 165
    check-cast p0, Lcom/dd/plist/NSData;

    invoke-virtual {p0}, Lcom/dd/plist/NSData;->bytes()[B

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_6
    instance-of v0, p0, Lcom/dd/plist/NSDate;

    if-eqz v0, :cond_7

    .line 167
    check-cast p0, Lcom/dd/plist/NSDate;

    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 168
    :cond_7
    instance-of v0, p0, Lcom/dd/plist/UID;

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Lcom/dd/plist/UID;

    invoke-virtual {p0}, Lcom/dd/plist/UID;->getBytes()[B

    move-result-object p0

    goto :goto_0
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p0, p1, v0}, Lcom/dd/plist/NSObject;->toJavaObject(Lcom/dd/plist/NSObject;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract toXML(Ljava/lang/StringBuilder;I)V
.end method

.method public toXMLPropertyList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<plist version=\"1.0\">"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 103
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</plist>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
