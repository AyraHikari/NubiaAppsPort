.class public Lcn/nubia/camera/ak/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/nubia/camera/ak/a;

.field private static c:Lcn/nubia/camera/ak/a/a;


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:Ljava/lang/Boolean;

.field private C:Ljava/lang/Boolean;

.field private D:Ljava/lang/Boolean;

.field private E:Ljava/lang/Boolean;

.field private F:Ljava/lang/Boolean;

.field private G:Ljava/lang/Boolean;

.field private H:Ljava/lang/Boolean;

.field private I:Ljava/lang/Boolean;

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/lang/Boolean;

.field private L:Ljava/lang/Boolean;

.field private M:Ljava/lang/Boolean;

.field private N:Ljava/lang/Boolean;

.field private O:Ljava/lang/Boolean;

.field private P:Ljava/lang/Boolean;

.field private Q:Ljava/lang/Boolean;

.field private R:Ljava/lang/Boolean;

.field private S:Ljava/lang/Boolean;

.field private T:Ljava/lang/Boolean;

.field private U:Ljava/lang/Boolean;

.field private V:Ljava/lang/Boolean;

.field private W:Ljava/lang/Boolean;

.field private X:Ljava/lang/Boolean;

.field private Y:Ljava/lang/Boolean;

.field private Z:Ljava/lang/Boolean;

.field private aA:Ljava/lang/Integer;

.field private aB:Ljava/lang/Boolean;

.field private aC:Ljava/lang/Boolean;

.field private aD:Ljava/lang/Boolean;

.field private aE:Ljava/lang/Boolean;

.field private aF:Ljava/lang/Integer;

.field private aG:Ljava/lang/Integer;

.field private aH:Ljava/lang/Boolean;

.field private aI:Ljava/lang/Boolean;

.field private aJ:Ljava/lang/Integer;

.field private aK:Ljava/lang/Boolean;

.field private aL:Ljava/lang/Boolean;

.field private aM:Ljava/lang/Integer;

.field private aN:Ljava/lang/Boolean;

.field private aO:Ljava/lang/Integer;

.field private aP:Ljava/lang/Boolean;

.field private aa:Ljava/lang/Boolean;

.field private ab:Ljava/lang/Boolean;

.field private ac:Ljava/lang/Boolean;

.field private ad:Ljava/lang/Boolean;

.field private ae:Ljava/lang/Boolean;

.field private af:Ljava/lang/Boolean;

.field private ag:Ljava/lang/Boolean;

.field private ah:Ljava/lang/Boolean;

.field private ai:Ljava/lang/Boolean;

.field private aj:Ljava/lang/Boolean;

.field private ak:Ljava/lang/Integer;

.field private al:Ljava/lang/Boolean;

.field private am:Ljava/lang/Boolean;

.field private an:Ljava/lang/Integer;

.field private ao:Ljava/lang/Boolean;

.field private ap:Ljava/lang/Boolean;

.field private aq:Ljava/lang/Boolean;

.field private ar:Ljava/lang/Boolean;

.field private as:Ljava/lang/Boolean;

.field private at:Ljava/lang/Boolean;

.field private au:Ljava/lang/Boolean;

.field private av:Ljava/lang/Boolean;

.field private aw:Ljava/lang/Boolean;

.field private ax:Ljava/lang/Boolean;

.field private ay:Ljava/lang/Boolean;

.field private az:Ljava/lang/Boolean;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcn/nubia/camera/ak/a;

    invoke-direct {v0}, Lcn/nubia/camera/ak/a;-><init>()V

    sput-object v0, Lcn/nubia/camera/ak/a;->a:Lcn/nubia/camera/ak/a;

    .line 152
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcn/nubia/camera/ak/a/b;

    invoke-direct {v0}, Lcn/nubia/camera/ak/a/b;-><init>()V

    sput-object v0, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lcn/nubia/camera/ak/a/a;

    invoke-direct {v0}, Lcn/nubia/camera/ak/a/a;-><init>()V

    sput-object v0, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/camera/ak/a;->d:Z

    .line 33
    iput-boolean v0, p0, Lcn/nubia/camera/ak/a;->e:Z

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->B:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ac:Ljava/lang/Boolean;

    return-void
.end method

.method public static declared-synchronized a()Lcn/nubia/camera/ak/a;
    .locals 2

    const-class v0, Lcn/nubia/camera/ak/a;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcn/nubia/camera/ak/a;->a:Lcn/nubia/camera/ak/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1005
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, ";"

    .line 1007
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "splitTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Config"

    invoke-static {v5, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    array-length v1, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_2

    aget-object v8, p1, v7

    const-string v9, ":"

    .line 1011
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1012
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1013
    aget-object v9, v8, v6

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1016
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseHashMap: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/camera/ak/a/a;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 981
    invoke-virtual {p2, p3}, Lcn/nubia/camera/ak/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 983
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 985
    invoke-virtual {p2, p3}, Lcn/nubia/camera/ak/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 987
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/camera/ak/a/a;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 992
    invoke-virtual {p2, p3}, Lcn/nubia/camera/ak/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 994
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 996
    invoke-virtual {p2, p3}, Lcn/nubia/camera/ak/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 998
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "camera"

    .line 1022
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 1023
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "0"

    .line 1025
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/k/a/a$a;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    .line 1026
    iput-boolean v1, p0, Lcn/nubia/camera/ak/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcn/nubia/camera/ak/a;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 178
    new-instance v1, Lcn/nubia/camera/ak/a;

    invoke-direct {v1}, Lcn/nubia/camera/ak/a;-><init>()V

    sput-object v1, Lcn/nubia/camera/ak/a;->a:Lcn/nubia/camera/ak/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    .line 176
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t reset config ParseState in non main thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->B:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 382
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "3DTrialMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->B:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 3

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->C:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 393
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ZoomBlurMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->C:Ljava/lang/Boolean;

    .line 399
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 3

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->W:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "WlanMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->W:Ljava/lang/Boolean;

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Y:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 418
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "PrismaMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->Y:Ljava/lang/Boolean;

    .line 424
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->D:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "EleFnoVideoMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->D:Ljava/lang/Boolean;

    .line 431
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 3

    .line 435
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->w:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "AiMoon"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->w:Ljava/lang/Boolean;

    .line 438
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 3

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->E:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HALEffect"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->E:Ljava/lang/Boolean;

    .line 445
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 3

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->F:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HALWaterMark"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->F:Ljava/lang/Boolean;

    .line 452
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 3

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->S:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HALHdr"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->S:Ljava/lang/Boolean;

    .line 459
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->S:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 3

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aI:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoHdr"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aI:Ljava/lang/Boolean;

    .line 466
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 3

    .line 470
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->T:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HALMirror"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->T:Ljava/lang/Boolean;

    .line 473
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 3

    .line 477
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->U:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HALPretty"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->U:Ljava/lang/Boolean;

    .line 480
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->U:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->G:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    const-string v1, "ReprocessInNormal"

    if-eqz v0, :cond_0

    const-string v2, "TwoStreamInNormal"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->G:Ljava/lang/Boolean;

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v2, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->G:Ljava/lang/Boolean;

    .line 491
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->G:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 3

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->H:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    const-string v1, "ReprocessInPro"

    if-eqz v0, :cond_0

    const-string v2, "TwoStreamInPro"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->H:Ljava/lang/Boolean;

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v2, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->H:Ljava/lang/Boolean;

    .line 502
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 3

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->I:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    const-string v1, "ReprocessInPretty"

    if-eqz v0, :cond_0

    const-string v2, "TwoStreamInPretty"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->I:Ljava/lang/Boolean;

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v2, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->I:Ljava/lang/Boolean;

    .line 513
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 3

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aa:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ReprocessInSlowshutter"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aa:Ljava/lang/Boolean;

    .line 520
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 3

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ab:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ReprocessInDng"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ab:Ljava/lang/Boolean;

    .line 527
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 3

    .line 531
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Z:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ReprocessInMicrospur"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->Z:Ljava/lang/Boolean;

    .line 534
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 3

    .line 538
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->J:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "LightDrawBackLight"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->J:Ljava/lang/Boolean;

    .line 541
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 3

    .line 545
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->K:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "Fingerprint"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->K:Ljava/lang/Boolean;

    .line 548
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->K:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 3

    .line 559
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->L:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "Specification"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->L:Ljava/lang/Boolean;

    .line 562
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 3

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->M:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "1080p_60fpsVideo"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->M:Ljava/lang/Boolean;

    .line 569
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->M:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 3

    .line 573
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->N:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HighQualitySize4Pano"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->N:Ljava/lang/Boolean;

    .line 576
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 3

    .line 580
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->X:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoEffect"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->X:Ljava/lang/Boolean;

    .line 583
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 3

    .line 587
    invoke-static {}, Lcn/nubia/camera/ba/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->V:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "CaptureCamera"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->V:Ljava/lang/Boolean;

    .line 593
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->V:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 3

    .line 597
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->O:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "LogoWaterMark"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->O:Ljava/lang/Boolean;

    .line 600
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->O:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 164
    iget-boolean v0, p0, Lcn/nubia/camera/ak/a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/ak/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/ak/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/ak/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcn/nubia/camera/ak/a;->d:Z

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDefaultConfig: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Config"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t parse config in non main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aJ:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 944
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ak/a;->aJ:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 947
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/ak/a;->aJ:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method public aA()Z
    .locals 3

    .line 820
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->au:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 821
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "DebugMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    .line 822
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 821
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->au:Ljava/lang/Boolean;

    .line 824
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->au:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aB()Z
    .locals 3

    .line 828
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->av:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "FrontProCameraPick"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->av:Ljava/lang/Boolean;

    .line 831
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->av:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .locals 3

    .line 842
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aw:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ReprocessWatermark"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aw:Ljava/lang/Boolean;

    .line 845
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aE()Z
    .locals 3

    .line 849
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ax:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "AppMultiFocus"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ax:Ljava/lang/Boolean;

    .line 852
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ax:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aF()Z
    .locals 3

    .line 856
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "NightSceneMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ay:Ljava/lang/Boolean;

    .line 859
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aG()Z
    .locals 3

    .line 863
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->az:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "IdPhotoMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->az:Ljava/lang/Boolean;

    .line 866
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->az:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aH()Z
    .locals 3

    .line 870
    invoke-static {}, Lcn/nubia/camera/ba/a;->j()Lcn/nubia/camera/ba/a$a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/ba/a$a;->a:Lcn/nubia/camera/ba/a$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 873
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aB:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "DoubleScreenDisplay"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aB:Ljava/lang/Boolean;

    .line 876
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aI()Z
    .locals 3

    .line 880
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aC:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "LivePhoto"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aC:Ljava/lang/Boolean;

    .line 883
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aJ()Z
    .locals 3

    .line 887
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aD:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "FrontHDR"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aD:Ljava/lang/Boolean;

    .line 890
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aK()Z
    .locals 3

    .line 894
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aE:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoAntiShake"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aE:Ljava/lang/Boolean;

    .line 897
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aL()Z
    .locals 3

    .line 902
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aK:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "AudioDeviceReady"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aK:Ljava/lang/Boolean;

    .line 905
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aM()Z
    .locals 3

    .line 909
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aL:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoPretty"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aL:Ljava/lang/Boolean;

    .line 912
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aN()Z
    .locals 3

    .line 916
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aN:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "RefocusAfterCapture"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aN:Ljava/lang/Boolean;

    .line 919
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aO()Z
    .locals 3

    .line 923
    invoke-static {}, Lcn/nubia/camera/ba/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 927
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aP:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 928
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "OnlinePrisma"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aP:Ljava/lang/Boolean;

    .line 930
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aP()I
    .locals 1

    .line 954
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aJ:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 957
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aQ()Z
    .locals 1

    .line 962
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public aR()I
    .locals 3

    .line 970
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aA:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ZoomType"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aA:Ljava/lang/Integer;

    .line 973
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 974
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aA:Ljava/lang/Integer;

    .line 976
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aA:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aa()Z
    .locals 3

    .line 604
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->P:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "TimeWaterMark"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->P:Ljava/lang/Boolean;

    .line 610
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->P:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ab()Z
    .locals 1

    .line 614
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result v0

    return v0
.end method

.method public ac()Z
    .locals 3

    .line 621
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ExifArtist"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->Q:Ljava/lang/Boolean;

    .line 624
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->Q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 3

    .line 635
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->R:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MultiPointFocus"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->R:Ljava/lang/Boolean;

    .line 638
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ae()I
    .locals 3

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 643
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    const-string v1, "VideoSubCamMode"

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v2, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 646
    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "SubCamVideo"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "LowLightSubCamVideo"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    goto :goto_0

    .line 652
    :cond_2
    sget-object v2, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    .line 655
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ak:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ag()I
    .locals 3

    .line 665
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aM:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoStreams"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aM:Ljava/lang/Integer;

    .line 668
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ah()Z
    .locals 3

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "FacePlusBokeh"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ag:Ljava/lang/Boolean;

    .line 676
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ai()Z
    .locals 3

    .line 680
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ad:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "CanCancelInLongExp"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ad:Ljava/lang/Boolean;

    .line 683
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aj()I
    .locals 3

    .line 694
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aO:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "PanoVendor"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aO:Ljava/lang/Integer;

    .line 697
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ak()Z
    .locals 3

    .line 701
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ae:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 702
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 705
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "Normal_AI"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ae:Ljava/lang/Boolean;

    .line 708
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ae:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public al()Z
    .locals 3

    .line 712
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->af:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MemSubVideoMaker"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->af:Ljava/lang/Boolean;

    .line 715
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->af:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public am()Z
    .locals 3

    .line 719
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ah:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MemSubPrisma"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ah:Ljava/lang/Boolean;

    .line 722
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ah:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public an()Z
    .locals 3

    .line 726
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ai:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MemSub3D"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ai:Ljava/lang/Boolean;

    .line 729
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ai:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ao()Z
    .locals 3

    .line 733
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aj:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MemSubInter"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aj:Ljava/lang/Boolean;

    .line 736
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 3

    .line 740
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->al:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "DoubleScreen"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->al:Ljava/lang/Boolean;

    .line 743
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->al:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aq()Z
    .locals 3

    .line 747
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->am:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MemSubSlomo"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->am:Ljava/lang/Boolean;

    .line 750
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->am:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ar()I
    .locals 3

    .line 754
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 757
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->an:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "NormalBackPretty"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->an:Ljava/lang/Integer;

    .line 760
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->an:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public as()I
    .locals 3

    .line 764
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aF:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "FrontRemosiacLuxIndex"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aF:Ljava/lang/Integer;

    .line 767
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public at()I
    .locals 3

    .line 771
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aG:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "BackRemosiacLuxIndex"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->b(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aG:Ljava/lang/Integer;

    .line 774
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aG:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public au()Z
    .locals 3

    .line 778
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ao:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "GenderEffect"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ao:Ljava/lang/Boolean;

    .line 781
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ao:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public av()Z
    .locals 3

    .line 785
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "BokehEffect"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ap:Ljava/lang/Boolean;

    .line 788
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aw()Z
    .locals 3

    .line 792
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aq:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "AutoHDR"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aq:Ljava/lang/Boolean;

    .line 795
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ax()Z
    .locals 3

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ar:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "8kVideo"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->ar:Ljava/lang/Boolean;

    .line 802
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->ar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ay()Z
    .locals 3

    .line 806
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->as:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoEncoder"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->as:Ljava/lang/Boolean;

    .line 809
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->as:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public az()Z
    .locals 3

    .line 813
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->at:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "4k_60fps"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->at:Ljava/lang/Boolean;

    .line 816
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->at:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "NormalMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->f:Ljava/lang/Boolean;

    .line 189
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "ProMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->g:Ljava/lang/Boolean;

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->h:Ljava/lang/Boolean;

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "PrettyMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->i:Ljava/lang/Boolean;

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MultiExposureMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->j:Ljava/lang/Boolean;

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "LightDrawMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->k:Ljava/lang/Boolean;

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "EletronicFnoMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->l:Ljava/lang/Boolean;

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 3

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 236
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "SlowShutterMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->m:Ljava/lang/Boolean;

    .line 242
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 3

    .line 246
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "StarTrackMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->n:Ljava/lang/Boolean;

    .line 253
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aH:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "StarTrackAutoE"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->aH:Ljava/lang/Boolean;

    .line 260
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->aH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 3

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VideoMakerMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->o:Ljava/lang/Boolean;

    .line 271
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 3

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 276
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "TrajectoryMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->p:Ljava/lang/Boolean;

    .line 282
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "CloneMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->q:Ljava/lang/Boolean;

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 306
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->r:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "FreezeVideoMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->r:Ljava/lang/Boolean;

    .line 313
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 3

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "VlogMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->s:Ljava/lang/Boolean;

    .line 320
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 3

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "HitchcockMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->t:Ljava/lang/Boolean;

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1038
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->u:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MultiRecordMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->u:Ljava/lang/Boolean;

    .line 334
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 3

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "StarrySkyMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->v:Ljava/lang/Boolean;

    .line 341
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->x:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "TimeLapseMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->x:Ljava/lang/Boolean;

    .line 348
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->y:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "SlowMotionMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->y:Ljava/lang/Boolean;

    .line 355
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 3

    .line 359
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->z:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 360
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "PanoramaMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->z:Ljava/lang/Boolean;

    .line 366
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->A:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 371
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->b:Ljava/util/Map;

    sget-object v1, Lcn/nubia/camera/ak/a;->c:Lcn/nubia/camera/ak/a/a;

    const-string v2, "MicroSpurMode"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/ak/a;->a(Ljava/util/Map;Lcn/nubia/camera/ak/a/a;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ak/a;->A:Ljava/lang/Boolean;

    .line 377
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ak/a;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
