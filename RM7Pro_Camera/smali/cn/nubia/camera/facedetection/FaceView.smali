.class public Lcn/nubia/camera/facedetection/FaceView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;
.implements Lcom/android/common/ui/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/facedetection/FaceView$a;
    }
.end annotation


# instance fields
.field private a:[Lcn/nubia/camera/k/j;

.field private b:F

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Rect;

.field private h:Lcn/nubia/camera/facedetection/FaceView$a;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->f:Landroid/graphics/Matrix;

    .line 44
    new-instance p1, Lcn/nubia/camera/facedetection/FaceView$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/camera/facedetection/FaceView$a;-><init>(Lcn/nubia/camera/facedetection/FaceView;Lcn/nubia/camera/facedetection/FaceView$1;)V

    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->h:Lcn/nubia/camera/facedetection/FaceView$a;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcn/nubia/camera/facedetection/FaceView;->i:I

    .line 46
    iput p1, p0, Lcn/nubia/camera/facedetection/FaceView;->j:I

    .line 47
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/FaceView;->k:Z

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcn/nubia/camera/facedetection/FaceView;->l:Z

    .line 51
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/FaceView;->m:Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/FaceView;->n:Z

    .line 55
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/FaceView;->o:Z

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08012e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 197
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 198
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    .line 203
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x168

    .line 205
    rem-int/lit16 p1, v0, 0x168

    :goto_0
    return p1
.end method

.method private a(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Matrix;
    .locals 3

    .line 171
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

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 173
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p6, p5

    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->n:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/facedetection/FaceView;->b:F

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p7, p5

    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->n:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/facedetection/FaceView;->b:F

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    mul-float/2addr p5, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz p8, :cond_2

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 181
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
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

    rsub-int p2, p3, 0x168

    int-to-float p2, p2

    .line 183
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 185
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    if-eqz p2, :cond_4

    .line 186
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_2
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 187
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

    .line 188
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 190
    :goto_3
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p6, p2

    div-float/2addr p7, p2

    .line 191
    invoke-virtual {p1, p6, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->a:[Lcn/nubia/camera/k/j;

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->invalidate()V

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->h:Lcn/nubia/camera/facedetection/FaceView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/FaceView$a;->removeMessages(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/facedetection/FaceView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/facedetection/FaceView;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 93
    iput p1, p0, Lcn/nubia/camera/facedetection/FaceView;->i:I

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->invalidate()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 98
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 99
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcn/nubia/camera/facedetection/FaceView;->g:Landroid/graphics/Rect;

    .line 100
    invoke-direct {p0, v0}, Lcn/nubia/camera/facedetection/FaceView;->a(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/facedetection/FaceView;->j:I

    .line 101
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    if-nez v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 102
    :goto_0
    iput-boolean p2, p0, Lcn/nubia/camera/facedetection/FaceView;->m:Z

    .line 103
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 104
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcn/nubia/camera/facedetection/FaceView;->n:Z

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSensorArraySize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/facedetection/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", displayOrientation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/facedetection/FaceView;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mMirror: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/facedetection/FaceView;->k:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mIsBackCameraInSubScreen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/facedetection/FaceView;->m:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceView"

    invoke-direct {p0, p2, p1}, Lcn/nubia/camera/facedetection/FaceView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->l:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->a:[Lcn/nubia/camera/k/j;

    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->a:[Lcn/nubia/camera/k/j;

    .line 69
    iput-object p2, p0, Lcn/nubia/camera/facedetection/FaceView;->c:Landroid/graphics/Rect;

    if-nez p3, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, p0, Lcn/nubia/camera/facedetection/FaceView;->b:F

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->postInvalidate()V

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->h:Lcn/nubia/camera/facedetection/FaceView$a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/facedetection/FaceView$a;->removeMessages(I)V

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/facedetection/FaceView;->h:Lcn/nubia/camera/facedetection/FaceView$a;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/facedetection/FaceView$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 133
    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->l:Z

    const/4 v1, 0x0

    const-string v2, "FaceView"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->a:[Lcn/nubia/camera/k/j;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 134
    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->o:Z

    const-string v0, "show faceBound"

    .line 136
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v8, p0, Lcn/nubia/camera/facedetection/FaceView;->c:Landroid/graphics/Rect;

    .line 140
    iget-object v4, p0, Lcn/nubia/camera/facedetection/FaceView;->f:Landroid/graphics/Matrix;

    iget-boolean v5, p0, Lcn/nubia/camera/facedetection/FaceView;->k:Z

    iget v6, p0, Lcn/nubia/camera/facedetection/FaceView;->j:I

    iget-object v7, p0, Lcn/nubia/camera/facedetection/FaceView;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/FaceView;->getHeight()I

    move-result v10

    iget-boolean v11, p0, Lcn/nubia/camera/facedetection/FaceView;->m:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/camera/facedetection/FaceView;->a(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Matrix;

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->f:Landroid/graphics/Matrix;

    iget v3, p0, Lcn/nubia/camera/facedetection/FaceView;->i:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 144
    iget v0, p0, Lcn/nubia/camera/facedetection/FaceView;->i:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->a:[Lcn/nubia/camera/k/j;

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 147
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/camera/k/j;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original faceBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/facedetection/FaceView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->f:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform faceBound: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/nubia/camera/facedetection/FaceView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcn/nubia/camera/facedetection/FaceView;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/facedetection/FaceView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 159
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/camera/facedetection/FaceView;->o:Z

    if-eqz v0, :cond_3

    .line 160
    iput-boolean v1, p0, Lcn/nubia/camera/facedetection/FaceView;->o:Z

    const-string v0, "hide faceBound"

    .line 161
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setState(Z)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceView"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean p1, p0, Lcn/nubia/camera/facedetection/FaceView;->l:Z

    return-void
.end method
