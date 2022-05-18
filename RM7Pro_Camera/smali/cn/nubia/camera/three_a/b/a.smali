.class public Lcn/nubia/camera/three_a/b/a;
.super Lcn/nubia/camera/three_a/a/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/b/a$b;,
        Lcn/nubia/camera/three_a/b/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/nubia/camera/k/ah;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Matrix;

.field private l:Lcn/nubia/camera/three_a/b/a$b;

.field private m:Lcn/nubia/camera/three_a/b/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/ah;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/three_a/a/a;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->e:Z

    .line 49
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->f:Z

    .line 50
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->g:Z

    .line 51
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->h:Z

    .line 55
    iput v0, p0, Lcn/nubia/camera/three_a/b/a;->j:I

    .line 58
    new-instance v1, Lcn/nubia/camera/three_a/b/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/three_a/b/a$b;-><init>(Lcn/nubia/camera/three_a/b/a;Lcn/nubia/camera/three_a/b/a$1;)V

    iput-object v1, p0, Lcn/nubia/camera/three_a/b/a;->l:Lcn/nubia/camera/three_a/b/a$b;

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    .line 72
    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$c;)V

    .line 73
    iput-object p3, p0, Lcn/nubia/camera/three_a/b/a;->c:Lcn/nubia/camera/ad/a;

    .line 74
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v0, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    .line 76
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    iput-object p1, p0, Lcn/nubia/camera/three_a/b/a;->a:Landroid/util/Range;

    .line 78
    invoke-direct {p0, p2}, Lcn/nubia/camera/three_a/b/a;->a(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/three_a/b/a;->k:Landroid/graphics/Matrix;

    .line 79
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/aq/f;->a(Lcn/nubia/camera/af/a;)I

    move-result p2

    const-string p3, "pref_camera_exposure_compensation"

    invoke-virtual {p1, p3, p2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/three_a/b/a;->j:I

    const/4 p1, 0x4

    .line 83
    iput p1, p0, Lcn/nubia/camera/three_a/b/a;->i:I

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Matrix;
    .locals 7

    .line 307
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->G()I

    move-result p1

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 313
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p1, 0x0

    .line 314
    invoke-virtual {v1, v4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 316
    :cond_1
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    rsub-int p1, v0, 0x168

    int-to-float p1, p1

    .line 317
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 318
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 321
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, v0

    .line 322
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 323
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    return-object v1
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/b/a;)Lcn/nubia/camera/three_a/b/a$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/camera/three_a/b/a;->m:Lcn/nubia/camera/three_a/b/a$a;

    return-object p0
.end method

.method private a([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    .line 349
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 350
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 351
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/three_a/b/a;->j:I

    if-eq v0, p1, :cond_0

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    .line 170
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSetting ev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreeAStateManager"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    .line 173
    iput p1, p0, Lcn/nubia/camera/three_a/b/a;->j:I

    :cond_0
    return-void
.end method

.method private b([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 3

    .line 356
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 357
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 358
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private c([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 4

    const/4 v0, 0x1

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 363
    iput v0, p0, Lcn/nubia/camera/three_a/b/a;->i:I

    .line 365
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 366
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 367
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 368
    iget-object v2, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ad;)V

    .line 370
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 371
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 372
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 373
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 374
    iget-object v2, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ad;)V

    .line 376
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 377
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 378
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 379
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private d(Landroid/graphics/RectF;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 6

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 250
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float v0, v1, v2

    .line 252
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 255
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v1

    sub-float v1, v5, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    div-float/2addr v0, v1

    div-float v1, v3, v4

    sub-float/2addr v0, v1

    .line 257
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 258
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    div-float/2addr v0, v1

    div-float v1, v3, v4

    sub-float/2addr v0, v1

    .line 263
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 264
    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 270
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v5, v0

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_1

    .line 274
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 276
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    sub-float/2addr v5, v0

    div-float/2addr v5, v4

    iget v2, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    iget v4, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    add-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 284
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/b/a;->f(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 285
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a;->e(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    .line 287
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private e(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 293
    iget-object v2, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 294
    iget-object v3, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcn/nubia/camera/three_a/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 297
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private f(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->l:Lcn/nubia/camera/three_a/b/a$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 103
    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/b/a$b;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/three_a/b/a;->a:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->a:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/three_a/b/a;->a:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 153
    invoke-direct {p0, v1}, Lcn/nubia/camera/three_a/b/a;->b(I)V

    if-nez v1, :cond_0

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->m:Lcn/nubia/camera/three_a/b/a$a;

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Lcn/nubia/camera/three_a/b/a$a;->W()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a;->b(I)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a;->d(Landroid/graphics/RectF;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 112
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->c:Lcn/nubia/camera/ad/a;

    invoke-static {p1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/b/a;->c([Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/ad;)V
    .locals 2

    .line 383
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->f:Z

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->u:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->g:Z

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/b/a$a;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/camera/three_a/b/a;->m:Lcn/nubia/camera/three_a/b/a$a;

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 179
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/b/a;->f:Z

    .line 182
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 185
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 187
    iget-object p2, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    :cond_1
    const-string p1, "ThreeAStateManager"

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockAF: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->f:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    .line 146
    iput v0, p0, Lcn/nubia/camera/three_a/b/a;->i:I

    return-void
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 2

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a;->d(Landroid/graphics/RectF;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 121
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/b/a;->a([Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 4

    .line 198
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/b/a;->g:Z

    .line 201
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 204
    sget-object v0, Lcn/nubia/camera/k/a/a$b;->u:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->g:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 206
    iget-object p2, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    :cond_1
    const-string p1, "ThreeAStateManager"

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockAFROI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->g:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 390
    iget v0, p0, Lcn/nubia/camera/three_a/b/a;->i:I

    return v0
.end method

.method public c(Landroid/graphics/RectF;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/b/a;->d(Landroid/graphics/RectF;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 141
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/b/a;->b([Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method

.method public c(ZZ)V
    .locals 2

    .line 217
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/b/a;->e:Z

    .line 220
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 394
    iget v0, p0, Lcn/nubia/camera/three_a/b/a;->j:I

    return v0
.end method

.method public d(ZZ)V
    .locals 2

    .line 233
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/b/a;->h:Z

    .line 235
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcn/nubia/camera/three_a/b/a;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 240
    iget-object p2, p0, Lcn/nubia/camera/three_a/b/a;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/b/a;->e:Z

    return v0
.end method
