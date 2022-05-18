.class public Lorg/apache/commons/lang/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;

.field static class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 576
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 577
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 578
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    if-nez p2, :cond_2

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_3
    iput p2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 611
    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 612
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 526
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

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 155
    .local v0, "registry":Ljava/util/Set;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "builder"    # Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 182
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 183
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 184
    aget-object v1, v3, v4

    .line 185
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v5, Ljava/lang/InternalError;

    const-string v6, "Unexpected IllegalAccessException"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v5

    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "i":I
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 242
    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .prologue
    const/4 v4, 0x0

    .line 286
    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;

    .prologue
    .line 308
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 4
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z
    .param p4, "reflectUpToClass"    # Ljava/lang/Class;
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 360
    if-nez p2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object to build a hash code for must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    .line 364
    .local v0, "builder":Lorg/apache/commons/lang/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 365
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 366
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 368
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2
.end method

.method public static reflectionHashCode(Ljava/lang/Object;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 404
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # Ljava/util/Collection;

    .prologue
    .line 476
    invoke-static {p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .prologue
    const/4 v4, 0x0

    .line 440
    const/16 v0, 0x11

    const/16 v1, 0x25

    move-object v2, p0

    move v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 514
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 526
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.commons.lang.builder.HashCodeBuilder"

    invoke-static {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 527
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 528
    sget-object v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 530
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    return-void

    .line 526
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 547
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 548
    .local v0, "registry":Ljava/util/Set;
    if-eqz v0, :cond_1

    .line 549
    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 550
    sget-object v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "org.apache.commons.lang.builder.HashCodeBuilder"

    invoke-static {v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    :goto_0
    monitor-enter v1

    .line 552
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    sget-object v2, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 556
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_1
    return-void

    .line 550
    :cond_2
    sget-object v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 672
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 673
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 708
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 709
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 742
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 775
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 776
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 809
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 810
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 847
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 848
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 912
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 885
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 888
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 889
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 890
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 891
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 892
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 893
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 894
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 895
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 896
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 897
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 898
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 899
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 900
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 901
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 902
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 903
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 906
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 909
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_9
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 945
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 946
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 636
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 637
    return-object p0

    .line 636
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 688
    if-nez p1, :cond_1

    .line 689
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 695
    :cond_0
    return-object p0

    .line 691
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 692
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    .line 722
    if-nez p1, :cond_1

    .line 723
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 729
    :cond_0
    return-object p0

    .line 725
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 726
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [D

    .prologue
    .line 755
    if-nez p1, :cond_1

    .line 756
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 762
    :cond_0
    return-object p0

    .line 758
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 759
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    .line 789
    if-nez p1, :cond_1

    .line 790
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 796
    :cond_0
    return-object p0

    .line 792
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 793
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    .line 823
    if-nez p1, :cond_1

    .line 824
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 830
    :cond_0
    return-object p0

    .line 826
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 827
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [J

    .prologue
    .line 861
    if-nez p1, :cond_1

    .line 862
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 868
    :cond_0
    return-object p0

    .line 864
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 865
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 925
    if-nez p1, :cond_1

    .line 926
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 932
    :cond_0
    return-object p0

    .line 928
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 929
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    .line 959
    if-nez p1, :cond_1

    .line 960
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 966
    :cond_0
    return-object p0

    .line 962
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 963
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    .line 650
    if-nez p1, :cond_1

    .line 651
    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 657
    :cond_0
    return-object p0

    .line 653
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 654
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2
    .param p1, "superHashCode"    # I

    .prologue
    .line 980
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    .line 981
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
