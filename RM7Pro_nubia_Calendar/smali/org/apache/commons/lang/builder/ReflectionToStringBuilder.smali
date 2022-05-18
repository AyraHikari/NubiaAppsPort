.class public Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;
.super Lorg/apache/commons/lang/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field private excludeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 416
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .prologue
    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V

    .line 416
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 469
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 495
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "outputTransients"    # Z

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 516
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 517
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z

    .prologue
    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 416
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 421
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 540
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 541
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 542
    invoke-virtual {p0, p6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 543
    return-void
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 376
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 389
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    .local v2, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 391
    aget-object v0, p0, v1

    .line 392
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    sget-object v3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v1, v0, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .prologue
    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 334
    new-instance v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/commons/lang/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 287
    new-instance v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldName"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # Ljava/util/Collection;

    .prologue
    .line 360
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .prologue
    .line 410
    new-instance v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getExcludeFieldNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getExcludeFieldNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 575
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .locals 9
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 592
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 593
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    .line 616
    :cond_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 597
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 598
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 599
    aget-object v1, v4, v5

    .line 600
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 605
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 606
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/InternalError;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unexpected IllegalAccessException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-object p0
.end method

.method public setAppendStatics(Z)V
    .locals 0
    .param p1, "appendStatics"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 704
    return-void
.end method

.method public setAppendTransients(Z)V
    .locals 0
    .param p1, "appendTransients"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 716
    return-void
.end method

.method public setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;
    .locals 1
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 732
    :goto_0
    return-object p0

    .line 729
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 744
    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 746
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 751
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    .line 770
    :goto_0
    return-object v1

    .line 764
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 765
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 766
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 767
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 768
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1

    .line 770
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
