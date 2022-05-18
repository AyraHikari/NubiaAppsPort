.class public Lcn/nubia/camera/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/h/b$a;
    }
.end annotation


# static fields
.field private static final h:[F


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/util/Size;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Lcom/android/common/b/l;

.field private i:Ljava/nio/FloatBuffer;

.field private j:[F

.field private k:[F

.field private l:Lcn/nubia/camera/h/a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/h/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/h/b;->h:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/h/b;->a:Z

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/h/b;->b:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 45
    iput-object v2, p0, Lcn/nubia/camera/h/b;->j:[F

    new-array v1, v1, [F

    .line 46
    iput-object v1, p0, Lcn/nubia/camera/h/b;->k:[F

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/h/b;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    .line 54
    iput-object p3, p0, Lcn/nubia/camera/h/b;->e:Landroid/graphics/Rect;

    .line 55
    iput-object p4, p0, Lcn/nubia/camera/h/b;->f:Landroid/graphics/Rect;

    .line 56
    sget-object p1, Lcn/nubia/camera/h/b;->h:[F

    array-length p2, p1

    mul-int/lit8 p2, p2, 0x20

    div-int/lit8 p2, p2, 0x8

    .line 57
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/h/b;->i:Ljava/nio/FloatBuffer;

    .line 59
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/h/b;->j:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 61
    iget-object p1, p0, Lcn/nubia/camera/h/b;->k:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 154
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public static a(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 141
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 142
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v1, p2, v2}, Landroid/util/Rational;-><init>(II)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p2

    if-lez p2, :cond_0

    move-object v0, v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    mul-int/2addr p2, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    div-int/2addr p2, v1

    .line 145
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    mul-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    div-int/2addr p0, v0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p2, v0

    add-int/2addr p0, p1

    invoke-direct {v1, v0, p1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private a(J)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 130
    iget-object v2, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/h/b$a;

    iget-object v2, v2, Lcn/nubia/camera/h/b$a;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 131
    iget-object p1, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    iget-object p2, p0, Lcn/nubia/camera/h/b;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/h/b$a;

    iget-object v1, v1, Lcn/nubia/camera/h/b$a;->b:Landroid/graphics/Rect;

    invoke-static {p1, p2, v1}, Lcn/nubia/camera/h/b;->a(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/h/b;->e:Landroid/graphics/Rect;

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    iget-object p2, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/h/a;->a(Landroid/util/Size;)V

    .line 133
    iget-object p1, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    iget-object p2, p0, Lcn/nubia/camera/h/b;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/h/a;->a(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lcn/nubia/camera/h/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/android/common/b/l;

    iget-object v1, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    .line 168
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 169
    new-instance p1, Lcn/nubia/camera/h/a;

    iget-object v0, p0, Lcn/nubia/camera/h/b;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/nubia/camera/h/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/h/a;->a(Landroid/util/Size;)V

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    iget-object v0, p0, Lcn/nubia/camera/h/b;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/h/a;->a(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcn/nubia/camera/h/b;->b:Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcn/nubia/camera/h/b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    .line 181
    iget-object v1, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    invoke-virtual {v1}, Lcn/nubia/camera/h/a;->b()V

    .line 182
    iput-object v0, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcn/nubia/camera/h/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcn/nubia/camera/h/b;->a:Z

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 109
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lcn/nubia/camera/h/b;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    new-instance v3, Lcn/nubia/camera/h/b$a;

    invoke-direct {v3, v0, p1}, Lcn/nubia/camera/h/b$a;-><init>(Ljava/lang/Long;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/h/b;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/util/Size;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/h/b;->d:Landroid/util/Size;

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 13

    .line 71
    iget-boolean v0, p0, Lcn/nubia/camera/h/b;->a:Z

    if-eqz v0, :cond_1

    .line 72
    iget-boolean p2, p0, Lcn/nubia/camera/h/b;->b:Z

    if-eqz p2, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/h/b;->d()V

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 78
    :cond_1
    invoke-direct {p0, p2}, Lcn/nubia/camera/h/b;->a(Lcom/android/common/b/g;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/h/b;->a(J)V

    .line 82
    iget-object v2, p0, Lcn/nubia/camera/h/b;->l:Lcn/nubia/camera/h/a;

    iget-object v3, p0, Lcn/nubia/camera/h/b;->j:[F

    iget-object v4, p0, Lcn/nubia/camera/h/b;->k:[F

    iget-object v5, p0, Lcn/nubia/camera/h/b;->i:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    .line 83
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v8

    iget-object v0, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v9

    .line 84
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    move-object v12, p2

    .line 82
    invoke-virtual/range {v2 .. v12}, Lcn/nubia/camera/h/a;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 85
    iget-object p2, p0, Lcn/nubia/camera/h/b;->g:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    const/4 p2, 0x1

    .line 97
    iput-boolean p2, p0, Lcn/nubia/camera/h/b;->a:Z

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/h/b;->d()V

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return-void
.end method
