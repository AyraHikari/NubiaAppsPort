.class public Lcn/nubia/camera/facedetection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/facedetection/b$a;,
        Lcn/nubia/camera/facedetection/b$b;,
        Lcn/nubia/camera/facedetection/b$c;
    }
.end annotation


# instance fields
.field private final a:Lcn/nubia/camera/facedetection/b$b;

.field private b:Lcn/nubia/camera/d/a;

.field private c:Lcn/nubia/camera/facedetection/b$c;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Landroid/hardware/camera2/CameraCharacteristics;

.field private g:Landroid/graphics/Rect;

.field private h:I

.field private i:Z

.field private j:Lcn/nubia/camera/ad/a;

.field private k:Landroid/util/Size;

.field private l:Lcn/nubia/camera/as/b;

.field private m:Lcn/nubia/camera/v/b;

.field private n:Lcn/nubia/camera/facedetection/b$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/facedetection/b;->e:Z

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    .line 44
    iput v0, p0, Lcn/nubia/camera/facedetection/b;->h:I

    .line 45
    iput-boolean v0, p0, Lcn/nubia/camera/facedetection/b;->i:Z

    .line 46
    iput-object v1, p0, Lcn/nubia/camera/facedetection/b;->j:Lcn/nubia/camera/ad/a;

    .line 48
    new-instance v0, Lcn/nubia/camera/as/b;

    invoke-direct {v0}, Lcn/nubia/camera/as/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    .line 62
    new-instance v0, Lcn/nubia/camera/facedetection/b$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/facedetection/b$b;-><init>(Lcn/nubia/camera/facedetection/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->a:Lcn/nubia/camera/facedetection/b$b;

    .line 63
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->b:Lcn/nubia/camera/d/a;

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b;->j:Lcn/nubia/camera/ad/a;

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/b;->a()V

    .line 66
    iget-boolean p1, p0, Lcn/nubia/camera/facedetection/b;->e:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->j:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/as/b;->a(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 153
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    .line 158
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x168

    .line 160
    rem-int/lit16 p1, v0, 0x168

    :goto_0
    return p1
.end method

.method private a(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Matrix;
    .locals 2

    .line 134
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p7, p7

    int-to-float p6, p6

    div-float v1, p7, p6

    sub-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 136
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p6, p5

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p7, p5

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v1, v0

    .line 142
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 143
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    neg-int p4, p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p2, p3

    .line 145
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 146
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p6, p2

    div-float/2addr p7, p2

    .line 147
    invoke-virtual {p1, p6, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method

.method private a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 113
    array-length v0, p1

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->m:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v4

    .line 122
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 123
    iget-object v1, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v1}, Lcn/nubia/camera/facedetection/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/facedetection/b;->h:I

    .line 124
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    iget v5, p0, Lcn/nubia/camera/facedetection/b;->h:I

    iget-object v2, p0, Lcn/nubia/camera/facedetection/b;->k:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v2, p0, Lcn/nubia/camera/facedetection/b;->k:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/facedetection/b;->a(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Matrix;

    .line 127
    iget-object p2, p0, Lcn/nubia/camera/facedetection/b;->n:Lcn/nubia/camera/facedetection/b$a;

    invoke-virtual {p2, v0, v1, p1}, Lcn/nubia/camera/facedetection/b$a;->a([BLandroid/graphics/Matrix;[Lcn/nubia/camera/k/j;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/facedetection/b;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/camera/facedetection/b;->e:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$c;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/facedetection/b;->c:Lcn/nubia/camera/facedetection/b$c;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/facedetection/b;)Landroid/util/Size;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/facedetection/b;->k:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/facedetection/b;->m:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/as/b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/facedetection/b;->a:Lcn/nubia/camera/facedetection/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 80
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/facedetection/b;->j:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    .line 81
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->g:Landroid/graphics/Rect;

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->f:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/facedetection/b;->i:Z

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b;->k:Landroid/util/Size;

    return-void
.end method

.method public a(Lcn/nubia/camera/facedetection/b$c;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b;->c:Lcn/nubia/camera/facedetection/b$c;

    return-void
.end method

.method public a(Lcn/nubia/camera/v/b;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b;->m:Lcn/nubia/camera/v/b;

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "SmileShot"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/b;->e:Z

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    iget-object v1, p0, Lcn/nubia/camera/facedetection/b;->j:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/as/b;->a(Landroid/app/Application;)V

    .line 95
    new-instance p1, Lcn/nubia/camera/facedetection/b$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcn/nubia/camera/facedetection/b$a;-><init>(Lcn/nubia/camera/facedetection/b;Lcn/nubia/camera/facedetection/b$1;)V

    iput-object p1, p0, Lcn/nubia/camera/facedetection/b;->n:Lcn/nubia/camera/facedetection/b$a;

    .line 96
    invoke-virtual {p1}, Lcn/nubia/camera/facedetection/b$a;->start()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/b;->b()V

    .line 100
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 2

    .line 167
    iget-object p3, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    invoke-virtual {p3}, Lcn/nubia/camera/as/b;->a()Lcn/nubia/camera/as/a;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 170
    array-length p3, p1

    if-nez p3, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object p3, p0, Lcn/nubia/camera/facedetection/b;->d:Ljava/lang/Object;

    monitor-enter p3

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->b:Lcn/nubia/camera/d/a;

    .line 175
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->b:Lcn/nubia/camera/d/a;

    .line 176
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->b:Lcn/nubia/camera/d/a;

    .line 177
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_2

    .line 178
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/facedetection/b;->a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;)V

    .line 180
    :cond_2
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->a:Lcn/nubia/camera/facedetection/b$b;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/b$b;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->l:Lcn/nubia/camera/as/b;

    invoke-virtual {v0}, Lcn/nubia/camera/as/b;->b()V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/facedetection/b;->n:Lcn/nubia/camera/facedetection/b$a;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcn/nubia/camera/facedetection/b$a;->a()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcn/nubia/camera/facedetection/b;->n:Lcn/nubia/camera/facedetection/b$a;

    :cond_0
    return-void
.end method
