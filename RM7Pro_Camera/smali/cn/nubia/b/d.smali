.class public Lcn/nubia/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/d$a;,
        Lcn/nubia/b/d$c;,
        Lcn/nubia/b/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/camera2/CameraDevice;

.field private b:Lcn/nubia/b/d$b;

.field private c:Landroid/hardware/camera2/CameraCharacteristics;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/b/d;->c:Landroid/hardware/camera2/CameraCharacteristics;

    .line 42
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/b/d;->d:Ljava/lang/String;

    const-string v1, "android.control.aeTargetFpsRange"

    const-string v2, "org.codeaurora.qcamera3.sessionParameters.EnableMFHDR"

    const-string v3, "org.codeaurora.qcamera3.sessionParameters.availableStreamMap"

    const-string v4, "com.nubia.chi.session_feature1"

    const-string v5, "android.control.extendedSceneMode"

    const-string v6, "com.zte.camera.sessionParameters"

    .line 44
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/d;->e:[Ljava/lang/String;

    .line 584
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Lcn/nubia/b/d;->h:I

    const/4 v1, 0x1

    .line 586
    iput-boolean v1, p0, Lcn/nubia/b/d;->i:Z

    .line 55
    iput-object p1, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 56
    iput-object p2, p0, Lcn/nubia/b/d;->c:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/d;->d:Ljava/lang/String;

    .line 60
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/b/d;->i:Z

    .line 61
    iput v0, p0, Lcn/nubia/b/d;->h:I

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/b/d;->f:Ljava/util/List;

    .line 65
    iget-object p1, p0, Lcn/nubia/b/d;->c:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 67
    iget-object v1, p0, Lcn/nubia/b/d;->e:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    iget-object v4, p0, Lcn/nubia/b/d;->f:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 610
    new-instance v0, Lcn/nubia/b/d$a;

    invoke-direct {p0, p1}, Lcn/nubia/b/d;->b(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/b/d$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 579
    invoke-static {}, Lcn/nubia/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraDeviceProxy"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 269
    iget-object v1, p0, Lcn/nubia/b/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 270
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcn/nubia/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRequestValueEqual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    if-nez v3, :cond_0

    return v0

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private a(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcn/nubia/b/d$b;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;ILandroid/hardware/camera2/CaptureRequest;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/b/d$b;",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/b/d$b;->b()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-nez p1, :cond_1

    move-object v5, v0

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/b/d$b;->d()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    move-object v5, v1

    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 253
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/b/d$b;->e()I

    move-result v1

    :goto_2
    move v7, v1

    if-nez p1, :cond_3

    goto :goto_3

    .line 254
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/b/d$b;->c()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    :goto_3
    move-object v2, p0

    move-object v4, p2

    move-object v6, p3

    move v8, p4

    .line 255
    invoke-direct/range {v2 .. v8}, Lcn/nubia/b/d;->a(Ljava/util/List;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 259
    invoke-direct {p0, v0, p5}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    .line 261
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkAndUpdateSurfaceList : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcn/nubia/b/d;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/b/d;->e()Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "II)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 299
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/b/m;

    .line 300
    invoke-virtual {v3}, Lcn/nubia/b/m;->g()V

    goto :goto_0

    :cond_0
    return v2

    .line 306
    :cond_1
    new-instance v3, Ljava/util/BitSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 307
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/b/m;

    .line 308
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->clear(I)V

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAndUpdateSurfaceList: newSurface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/b/m;

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndUpdateSurfaceList: lastSurface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v7, v9}, Lcn/nubia/b/m;->a(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 313
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 314
    invoke-virtual {v9}, Lcn/nubia/b/m;->f()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/b/m;->c(Ljava/lang/Object;)V

    .line 315
    invoke-interface {p1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v8, "checkAndUpdateSurfaceList: found"

    .line 316
    invoke-direct {p0, v8}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    .line 320
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 321
    invoke-virtual {v7}, Lcn/nubia/b/m;->g()V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 328
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    move/from16 v3, p5

    move/from16 v4, p6

    if-ne v3, v4, :cond_7

    move-object v3, p3

    move-object/from16 v4, p4

    .line 330
    invoke-direct {p0, p3, v4}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    return v5

    .line 331
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/b/m;

    .line 332
    invoke-virtual {v3}, Lcn/nubia/b/m;->c()V

    goto :goto_3

    :cond_8
    return v2

    .line 340
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/b/m;

    .line 341
    invoke-virtual {v4}, Lcn/nubia/b/m;->c()V

    goto :goto_4

    .line 343
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v2
.end method

.method private b(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p1, :cond_1

    .line 615
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    .line 617
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No handler given, and current thread has no looper!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcn/nubia/b/d;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 588
    iget-object v0, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/b/d;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget v1, p0, Lcn/nubia/b/d;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/b/d;->h:I

    .line 594
    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 591
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 595
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget v1, p0, Lcn/nubia/b/d;->h:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 601
    iput v1, p0, Lcn/nubia/b/d;->h:I

    .line 603
    :cond_0
    iget v1, p0, Lcn/nubia/b/d;->h:I

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 606
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/b/d;->c:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public a(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    .line 135
    invoke-direct {p0}, Lcn/nubia/b/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 140
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V

    return-object v1
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    .line 155
    invoke-direct {p0}, Lcn/nubia/b/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 160
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 165
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V

    return-object v1
.end method

.method public a(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILcn/nubia/b/a$c;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;I",
            "Lcn/nubia/b/a$c;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcn/nubia/b/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Lcn/nubia/b/d$b;->f()V

    .line 189
    :cond_1
    iget-object v2, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/b/d;->a(Lcn/nubia/b/d$b;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;ILandroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    .line 190
    invoke-virtual {v1}, Lcn/nubia/b/d$b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    invoke-virtual {v1}, Lcn/nubia/b/d$b;->g()V

    .line 200
    iget-object v1, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    invoke-virtual {v1, p4, p2, p5}, Lcn/nubia/b/d$b;->a(Lcn/nubia/b/a$c;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_1

    .line 191
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {v0}, Lcn/nubia/b/d$b;->h()V

    .line 195
    :cond_4
    new-instance v8, Lcn/nubia/b/d$b;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/nubia/b/d$b;-><init>(Lcn/nubia/b/d;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/CaptureRequest;ILcn/nubia/b/a$c;Landroid/os/Handler;)V

    iput-object v8, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    move-object v0, v8

    .line 202
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    :try_start_1
    const-string p4, "Create CaptureSessionBySessionConfiguration"

    .line 206
    invoke-direct {p0, p4}, Lcn/nubia/b/d;->a(Ljava/lang/String;)V

    .line 207
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/m;

    .line 209
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Lcn/nubia/b/m;->a()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 210
    invoke-virtual {v1}, Lcn/nubia/b/m;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {v1}, Lcn/nubia/b/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 213
    :cond_5
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_6
    new-instance p2, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 216
    invoke-direct {p0, p6}, Lcn/nubia/b/d;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p6

    invoke-direct {p2, p3, p4, p6, v0}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 217
    invoke-virtual {p2, p5}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    if-eqz p1, :cond_7

    .line 219
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 221
    :cond_7
    iget-object p1, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 227
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcn/nubia/b/d;->f()V

    return-void

    :catchall_0
    move-exception p1

    .line 202
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 7

    .line 87
    iget-object v0, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget v1, p0, Lcn/nubia/b/d;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 90
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    iget-object v3, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    const-string v3, "CameraDeviceProxy"

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close wait time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 94
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcn/nubia/b/d;->i:Z

    .line 98
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    iget-object v0, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Lcn/nubia/b/d$b;->i()V

    .line 106
    iput-object v1, p0, Lcn/nubia/b/d;->b:Lcn/nubia/b/d$b;

    .line 111
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "CameraDeviceProxy"

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close camera error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    iput-object v1, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    return-void

    :catchall_0
    move-exception v1

    .line 98
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method c()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 123
    :try_start_0
    iput v1, p0, Lcn/nubia/b/d;->h:I

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcn/nubia/b/d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 125
    iget-object v1, p0, Lcn/nubia/b/d;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcn/nubia/b/d;->d:Ljava/lang/String;

    return-object v0
.end method
