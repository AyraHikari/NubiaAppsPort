.class public Lcn/nubia/camera/k/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/k/x;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/k/ad;

.field private d:Lcn/nubia/camera/k/ad;

.field private e:Lcn/nubia/camera/k/x$b;

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/hardware/camera2/CameraCharacteristics;

.field private i:Lcn/nubia/camera/k/a;

.field private j:Z

.field private k:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private l:Lcn/nubia/camera/three_a/b/a;

.field private m:Ljava/lang/StringBuilder;

.field private n:Z

.field private o:F

.field private p:Landroid/graphics/Rect;

.field private q:F

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/three_a/b/a;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcn/nubia/camera/k/y;->f:I

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcn/nubia/camera/k/y;->j:Z

    .line 67
    iput-object v0, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    .line 68
    iput-boolean v1, p0, Lcn/nubia/camera/k/y;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    iput v2, p0, Lcn/nubia/camera/k/y;->o:F

    .line 71
    iput-object v0, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    .line 72
    iput v2, p0, Lcn/nubia/camera/k/y;->q:F

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/k/y;->r:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    .line 82
    iput-object p4, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    .line 83
    iput-object p3, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    .line 84
    new-instance p1, Lcn/nubia/camera/k/ad;

    invoke-direct {p1}, Lcn/nubia/camera/k/ad;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    .line 85
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/y;->h:Landroid/hardware/camera2/CameraCharacteristics;

    .line 86
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/k/y;->h:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/k/y;->n:Z

    .line 88
    new-instance p1, Lcn/nubia/camera/k/a;

    iget-object p2, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    iget-object p3, p0, Lcn/nubia/camera/k/y;->h:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object p4, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-direct {p1, p2, p3, p4}, Lcn/nubia/camera/k/a;-><init>(Lcn/nubia/camera/ad/a;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/k/x;)V

    iput-object p1, p0, Lcn/nubia/camera/k/y;->i:Lcn/nubia/camera/k/a;

    .line 89
    iput v2, p0, Lcn/nubia/camera/k/y;->o:F

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p1, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    .line 91
    iget-object p1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3ff20c4a    # 1.891f

    .line 92
    iput p1, p0, Lcn/nubia/camera/k/y;->q:F

    goto :goto_0

    .line 94
    :cond_0
    iput v2, p0, Lcn/nubia/camera/k/y;->q:F

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/k/y;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 97
    new-instance p2, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p2, p3, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object p2, p1, v1

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->s()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcn/nubia/camera/k/y;->i:Lcn/nubia/camera/k/a;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->d:Lcn/nubia/camera/k/ad;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/a;->b(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private B()V
    .locals 6

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->x()I

    move-result v0

    const/4 v1, 0x1

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcn/nubia/camera/k/y;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "autoWhiteBalance"

    goto/16 :goto_0

    :cond_0
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 412
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "manualWhiteBalance"

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/b;->b()Z

    move-result v1

    const-string v3, ")"

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cctWhiteBalance(qcom, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_2
    sget-object v1, Lcn/nubia/camera/ba/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 422
    iget-object v4, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 423
    iget-object v4, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 424
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cctWhiteBalance(google, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whiteBalance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private C()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->y()I

    move-result v0

    .line 433
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->A:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorTint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private D()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->o()F

    move-result v0

    .line 439
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/three_a/b/a;F)I

    move-result v1

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusDistance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; focusMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 447
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private E()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/three_a/b/a;)I

    move-result v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private F()V
    .locals 4

    .line 515
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->B()Z

    move-result v0

    .line 517
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->r:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFlip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 4

    .line 619
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->q()I

    move-result v0

    .line 623
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    .line 626
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->M:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zte_function: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private H()V
    .locals 4

    .line 631
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->Z()I

    move-result v0

    .line 635
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->N:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zte_feature: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private I()V
    .locals 4

    .line 640
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->aa()I

    move-result v0

    int-to-byte v0, v0

    .line 644
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->U:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zte_eis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private J()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->ab()I

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 657
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unset-scene_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 3

    .line 664
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->ab:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->l()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private L()V
    .locals 1

    .line 700
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->N()V

    goto :goto_0

    .line 704
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->M()V

    :goto_0
    return-void
.end method

.method private M()V
    .locals 4

    .line 709
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 711
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "on"

    .line 713
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 718
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubia hdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private N()V
    .locals 4

    .line 723
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 725
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->R:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->R:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 731
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->ad()[I

    move-result-object v1

    .line 732
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Lcn/nubia/camera/k/a/a$b;->S:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zte hdr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private O()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->D()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_0
    return-void
.end method

.method private P()V
    .locals 8

    .line 769
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->Z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "selfie_bokeh_mode: 1"

    .line 774
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 777
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->Q()I

    move-result v0

    .line 778
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Lcn/nubia/camera/k/a/a$b;->Y:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zte_blue_level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 781
    iget-object v2, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    .line 782
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 785
    invoke-static {v6, v4, v5, v6}, Lcn/nubia/camera/pretty/c/a;->a(IIII)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 789
    invoke-static {v1, v4, v5, v1}, Lcn/nubia/camera/pretty/c/a;->a(IIII)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v5, 0x2

    .line 793
    invoke-static {v5, v4, v2, v5}, Lcn/nubia/camera/pretty/c/a;->a(IIII)[I

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v4, 0x3

    .line 797
    invoke-static {v4, v2, v0, v4}, Lcn/nubia/camera/pretty/c/a;->a(IIII)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    move v2, v6

    .line 802
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 803
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v5, v5

    mul-int/2addr v5, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    array-length v7, v7

    invoke-static {v4, v6, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v3, Lcn/nubia/camera/pretty/c/a;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ParametersSetter"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->W:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "skip_stream_check: 1"

    .line 809
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->X:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "snapshot_blue_disable: 1"

    .line 811
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private Q()I
    .locals 3

    .line 816
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->D()F

    move-result v0

    const/4 v1, 0x0

    .line 817
    :goto_0
    sget-object v2, Lcn/nubia/camera/aq/e;->a:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 818
    sget-object v2, Lcn/nubia/camera/aq/e;->a:[F

    aget v2, v2, v1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 819
    sget-object v0, Lcn/nubia/camera/aq/e;->b:[I

    aget v0, v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x34

    return v0
.end method

.method private R()V
    .locals 3

    .line 826
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->E()Z

    move-result v0

    .line 827
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private S()V
    .locals 3

    .line 844
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    .line 845
    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 844
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private T()V
    .locals 6

    .line 849
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->C:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private U()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->c()Landroid/util/Size;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x280

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    .line 943
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private V()V
    .locals 3

    .line 950
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->v()Lcn/nubia/b/i;

    move-result-object v0

    .line 951
    sget-object v1, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-ne v0, v1, :cond_0

    const-string v0, "lcd-flash on"

    .line 952
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "lcd-flash off"

    .line 955
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private W()V
    .locals 3

    .line 997
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private X()V
    .locals 4

    .line 1002
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/k/y;->o:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1005
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->aa:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zte distortionCorrection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1008
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->R()Z

    move-result v0

    .line 1009
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubia distortionCorrection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private Y()V
    .locals 4

    .line 1016
    iget-object v0, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/b/a;->a(Lcn/nubia/camera/k/ad;)V

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->u:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1021
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1022
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1027
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/a;->c()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 1028
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1029
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 1028
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "DisableSuperNight 1"

    .line 1030
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    .line 1033
    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->T()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 1032
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableSuperNight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->T()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 459
    iget-object v0, p0, Lcn/nubia/camera/k/y;->d:Lcn/nubia/camera/k/ad;

    if-eqz v0, :cond_0

    .line 460
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 463
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcn/nubia/camera/k/ad;Z)V
    .locals 1

    .line 756
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(I)Z
    .locals 5

    .line 678
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 679
    array-length v2, v0

    if-lez v2, :cond_1

    .line 680
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private declared-synchronized aa()V
    .locals 3

    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(F)V
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoomratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcn/nubia/camera/k/ad;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/x;->b(I)I

    move-result v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 337
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 523
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->d(Z)V

    .line 525
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->e(Z)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->c(Z)V

    :goto_0
    return-void
.end method

.method private c(F)Landroid/graphics/Rect;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 899
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 900
    iget-object v1, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 901
    iget-object v2, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 902
    iget-object v4, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v4, p1

    float-to-int p1, v4

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private c(Lcn/nubia/camera/k/ad;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 533
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 539
    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 540
    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    .line 541
    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    :cond_0
    if-eqz v0, :cond_1

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNubiaHALPrettyMode 1 mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " SlimmingLevel: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " SmoothLevel: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ToningLevel: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "xiawenjun"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 548
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 549
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 550
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 553
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 554
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 555
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_2

    const-string p1, "pretty off"

    goto :goto_1

    .line 557
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$c;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private d(Lcn/nubia/camera/k/ad;)V
    .locals 2

    .line 472
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->z()Ljava/lang/String;

    move-result-object v0

    .line 474
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effect: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 4

    .line 562
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 567
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    .line 568
    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 569
    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    .line 570
    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    :cond_0
    if-eqz v0, :cond_1

    .line 573
    iget p1, v0, Lcn/nubia/camera/k/x$c;->a:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 574
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->O:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 575
    invoke-static {}, Lcn/nubia/camera/k/ai;->a()Lcn/nubia/camera/k/ai;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lcn/nubia/camera/k/x$c;->b:I

    invoke-virtual {p1, v1, v2, v3}, Lcn/nubia/camera/k/ai;->a(Lcn/nubia/camera/k/ad;II)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->O:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_2

    const-string p1, "pretty off"

    goto :goto_1

    .line 579
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$c;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private e(Lcn/nubia/camera/k/ad;)V
    .locals 7

    .line 480
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 481
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->b()I

    move-result v0

    .line 482
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v1, "WaterMark: "

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 484
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 485
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->G:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 488
    iget-object v3, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 489
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lez v4, :cond_3

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 490
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 491
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 492
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->F:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", chinese"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 495
    :cond_3
    sget-object v3, Lcn/nubia/camera/k/a/a$b;->F:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", english"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 584
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 585
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 589
    iput v1, v0, Lcn/nubia/camera/k/x$c;->a:I

    .line 590
    iput v1, v0, Lcn/nubia/camera/k/x$c;->b:I

    .line 591
    iput v1, v0, Lcn/nubia/camera/k/x$c;->d:I

    .line 592
    iput v1, v0, Lcn/nubia/camera/k/x$c;->c:I

    .line 595
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->P:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->Q:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/ai;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZteHALSoftSkin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 603
    iget p1, v0, Lcn/nubia/camera/k/x$c;->a:I

    if-ne p1, v3, :cond_2

    .line 604
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->P:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 605
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->Q:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, v0, Lcn/nubia/camera/k/x$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 606
    invoke-static {}, Lcn/nubia/camera/k/ai;->a()Lcn/nubia/camera/k/ai;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lcn/nubia/camera/k/x$c;->b:I

    invoke-virtual {p1, v1, v2, v3}, Lcn/nubia/camera/k/ai;->b(Lcn/nubia/camera/k/ad;II)V

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "softskin level: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v0, Lcn/nubia/camera/k/x$c;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v0, Lcn/nubia/camera/k/a/a$b;->P:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 610
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v0, Lcn/nubia/camera/k/a/a$b;->Q:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string p1, "softskin off"

    .line 611
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private f(Lcn/nubia/camera/k/ad;)V
    .locals 3

    .line 507
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    .line 509
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshotFlip: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 2

    .line 670
    invoke-static {}, Lcn/nubia/camera/ba/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 671
    iget-object p1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->ae()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 672
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomSupResState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->ac:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private g(Lcn/nubia/camera/k/ad;)V
    .locals 3

    .line 690
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->ac()I

    move-result v0

    .line 695
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->V:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zte_remosiac: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private g(Z)V
    .locals 6

    .line 738
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 739
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 740
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v0, Lcn/nubia/camera/k/a/a$b;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string p1, "NoiseReductionMode: 0; CustomNoiseReduction: 0"

    .line 741
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 744
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    sget-object v4, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->j()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 747
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 748
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    move v1, v3

    .line 749
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 750
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoiseReductionMode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; CustomNoiseReduction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private h(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 831
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    .line 832
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "ParametersSetter"

    const-string v0, "error getPictureSize: size is null"

    .line 834
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/16 v0, 0x50

    .line 839
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->s()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    iput-object v0, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    .line 113
    :cond_0
    iget v0, p0, Lcn/nubia/camera/k/y;->f:I

    if-eq v1, v0, :cond_1

    .line 114
    iput v1, p0, Lcn/nubia/camera/k/y;->f:I

    .line 116
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->u()V

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->f(Lcn/nubia/camera/k/ad;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->e(Lcn/nubia/camera/k/ad;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->d(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 296
    iget-object v3, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v3}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/k/y;->j:Z

    if-eqz v0, :cond_2

    .line 300
    sget-object v3, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 303
    :cond_2
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    if-ne v3, v0, :cond_4

    :cond_3
    move v1, v2

    goto :goto_1

    .line 305
    :cond_4
    sget-object v0, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    if-ne v3, v0, :cond_5

    goto :goto_1

    .line 307
    :cond_5
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-ne v3, v0, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    .line 309
    :cond_6
    sget-object v0, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    if-ne v3, v0, :cond_3

    .line 314
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    .line 315
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v2, v1

    .line 318
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 321
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "on"

    .line 323
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->T:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "zte_flash_level: 14"

    .line 325
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 328
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->T:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "zte_flash_level: 3"

    .line 329
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private u()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aeFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_0
    return-void
.end method

.method private v()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->N()I

    move-result v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "antibanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private w()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 368
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 375
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceDetection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private x()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->i()Z

    move-result v0

    .line 381
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZslEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->p()Z

    move-result v0

    .line 387
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->J:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private z()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/k/y;->i:Lcn/nubia/camera/k/a;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/a;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 12

    .line 246
    iget v0, p0, Lcn/nubia/camera/k/y;->o:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcn/nubia/camera/k/y;->o:F

    .line 251
    invoke-static {}, Lcn/nubia/camera/ba/a;->I()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    const v3, 0x41066a7f    # 8.401f

    const v4, 0x40115810    # 2.271f

    const v5, 0x3ff20c4a    # 1.891f

    if-eqz v0, :cond_8

    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    const v6, 0x3f99999a    # 1.2f

    cmpl-float v7, p1, v6

    if-nez v7, :cond_2

    move p1, v4

    goto :goto_0

    :cond_2
    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v9, p1, v8

    if-nez v9, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v11, p1, v10

    if-gtz v11, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    cmpg-float v11, p1, v2

    if-gez v11, :cond_5

    const v0, 0x3fe41894    # 1.7820001f

    sub-float/2addr p1, v10

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    cmpg-float v0, p1, v6

    if-gez v0, :cond_6

    const v0, 0x3ff3332a    # 1.8999989f

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v5

    goto :goto_0

    :cond_6
    if-lez v7, :cond_7

    cmpg-float v0, p1, v8

    if-gez v0, :cond_7

    const v0, 0x3fce7bf6

    sub-float/2addr p1, v6

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    goto :goto_0

    :cond_7
    if-lez v9, :cond_8

    mul-float/2addr p1, v3

    div-float/2addr p1, v8

    .line 274
    :cond_8
    :goto_0
    iput p1, p0, Lcn/nubia/camera/k/y;->q:F

    goto :goto_1

    .line 276
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->c(F)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    .line 277
    iput v2, p0, Lcn/nubia/camera/k/y;->q:F

    .line 279
    :goto_1
    iget p1, p0, Lcn/nubia/camera/k/y;->q:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->b(F)V

    .line 280
    iget-object p1, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/y;->a(Landroid/graphics/Rect;)V

    .line 281
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->t()V

    .line 282
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->z()V

    .line 283
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->X()V

    .line 284
    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->f(Z)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/ad;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    if-ne v0, p1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/camera/k/ad;)Z

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/b/a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/k/y;->l:Lcn/nubia/camera/three_a/b/a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcn/nubia/camera/k/y;->j:Z

    .line 962
    iput-boolean p1, p0, Lcn/nubia/camera/k/y;->j:Z

    if-eq v0, p1, :cond_0

    .line 964
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->a()Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    .line 128
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->aa()V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->s()I

    move-result v1

    .line 133
    iget-object v2, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 134
    iput-object v0, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 138
    :goto_0
    iget v2, p0, Lcn/nubia/camera/k/y;->f:I

    if-eq v1, v2, :cond_1

    .line 139
    iput v1, p0, Lcn/nubia/camera/k/y;->f:I

    move v0, v3

    .line 142
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_3

    .line 143
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 144
    iget-object v2, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->f()Landroid/util/Range;

    move-result-object v2

    if-ne v1, v2, :cond_4

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {v1, v2}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 150
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->t()V

    .line 151
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->V()V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->b(Lcn/nubia/camera/k/ad;)V

    .line 154
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->u()V

    .line 155
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->v()V

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->z()V

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->B()V

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->C()V

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->D()V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->E()V

    .line 161
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->w()V

    .line 163
    iget v0, p0, Lcn/nubia/camera/k/y;->q:F

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->b(F)V

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/k/y;->p:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Landroid/graphics/Rect;)V

    .line 165
    invoke-direct {p0, v4}, Lcn/nubia/camera/k/y;->b(Z)V

    .line 166
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->L()V

    .line 167
    invoke-direct {p0, v4}, Lcn/nubia/camera/k/y;->g(Z)V

    .line 168
    invoke-direct {p0, v4}, Lcn/nubia/camera/k/y;->h(Z)V

    .line 169
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->O()V

    .line 170
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->P()V

    .line 171
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->R()V

    .line 172
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->F()V

    .line 173
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->m()V

    .line 174
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->S()V

    .line 175
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->T()V

    .line 176
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->U()V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->f(Lcn/nubia/camera/k/ad;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->e(Lcn/nubia/camera/k/ad;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->d(Lcn/nubia/camera/k/ad;)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->n()V

    .line 181
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->X()V

    .line 182
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->Y()V

    .line 183
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->Z()V

    .line 184
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->x()V

    .line 185
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->y()V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->o()V

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->p()V

    .line 188
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->W()V

    .line 189
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->G()V

    .line 190
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->H()V

    .line 191
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->I()V

    .line 192
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->J()V

    .line 193
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->K()V

    .line 194
    invoke-direct {p0, v4}, Lcn/nubia/camera/k/y;->f(Z)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSetting, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParametersSetter"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public b()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->W()Z

    move-result v0

    .line 217
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->aa()V

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->b(Z)V

    .line 220
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->b(Lcn/nubia/camera/k/ad;)V

    .line 221
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->c(Lcn/nubia/camera/k/ad;)V

    .line 223
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->d(Lcn/nubia/camera/k/ad;)V

    .line 224
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->e(Lcn/nubia/camera/k/ad;)V

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->f(Lcn/nubia/camera/k/ad;)V

    .line 226
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/k/y;->a(Lcn/nubia/camera/k/ad;Z)V

    .line 227
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->h(Z)V

    .line 228
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->g(Z)V

    .line 229
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->Z()V

    .line 230
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->x()V

    .line 231
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->y()V

    .line 232
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->f(Z)V

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    monitor-enter v0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->L()V

    .line 237
    new-instance v1, Lcn/nubia/camera/k/ad;

    iget-object v2, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {v1, v2}, Lcn/nubia/camera/k/ad;-><init>(Lcn/nubia/camera/k/ad;)V

    iput-object v1, p0, Lcn/nubia/camera/k/y;->d:Lcn/nubia/camera/k/ad;

    .line 238
    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->g(Lcn/nubia/camera/k/ad;)V

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-direct {p0}, Lcn/nubia/camera/k/y;->A()V

    const-string v0, "ParametersSetter"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSnapshotSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/y;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()F
    .locals 1

    .line 288
    iget v0, p0, Lcn/nubia/camera/k/y;->o:F

    return v0
.end method

.method public d()Lcn/nubia/camera/k/x$b;
    .locals 1

    .line 853
    iget-object v0, p0, Lcn/nubia/camera/k/y;->e:Lcn/nubia/camera/k/x$b;

    return-object v0
.end method

.method public e()Landroid/media/CamcorderProfile;
    .locals 2

    .line 857
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/k/y;->f:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 861
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->w()I

    move-result v0

    return v0
.end method

.method public g()Lcn/nubia/camera/k/ad;
    .locals 1

    .line 869
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    return-object v0
.end method

.method public h()Lcn/nubia/camera/k/ad;
    .locals 1

    .line 873
    iget-object v0, p0, Lcn/nubia/camera/k/y;->d:Lcn/nubia/camera/k/ad;

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcn/nubia/camera/k/y;->b()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->d:Lcn/nubia/camera/k/ad;

    return-object v0
.end method

.method public i()Lcn/nubia/camera/k/ad;
    .locals 2

    .line 884
    new-instance v0, Lcn/nubia/camera/k/ad;

    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    invoke-direct {v0, v1}, Lcn/nubia/camera/k/ad;-><init>(Lcn/nubia/camera/k/ad;)V

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 888
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Lcn/nubia/camera/k/x;
    .locals 1

    .line 892
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 908
    iget-object v0, p0, Lcn/nubia/camera/k/y;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 7

    .line 912
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "turn off ois"

    .line 914
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    .line 919
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->h:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 920
    iget-object v2, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x;->M()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 921
    iget-object v4, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 922
    array-length v5, v0

    if-lt v5, v3, :cond_2

    .line 923
    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget v6, v0, v1

    if-ne v2, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ois: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 935
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    :goto_3
    return-void
.end method

.method public n()V
    .locals 3

    .line 969
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->Q()I

    move-result v0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoHDR10: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->E:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method public o()V
    .locals 4

    .line 975
    iget-boolean v0, p0, Lcn/nubia/camera/k/y;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->Y()Ljava/lang/String;

    move-result-object v0

    .line 979
    iget-object v1, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->K:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "on"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mfHDR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 984
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 985
    iget-object v0, p0, Lcn/nubia/camera/k/y;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/y;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "extended_scene_mode: 1"

    .line 987
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/y;->c:Lcn/nubia/camera/k/ad;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EXTENDED_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    const-string v0, "extended_scene_mode: 0"

    .line 990
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/y;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1039
    iget-object v0, p0, Lcn/nubia/camera/k/y;->a:Lcn/nubia/camera/k/x;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/graphics/Rect;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcn/nubia/camera/k/y;->g:Landroid/graphics/Rect;

    return-object v0
.end method
