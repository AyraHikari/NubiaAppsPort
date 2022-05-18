.class Lcn/nubia/camera/pretty/a/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/a;

.field final synthetic c:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;Lcn/nubia/camera/pretty/a/a;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$7;->c:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$7;->a:Lcn/nubia/camera/pretty/a/b;

    iput-object p3, p0, Lcn/nubia/camera/pretty/a/f$7;->b:Lcn/nubia/camera/pretty/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()F
    .locals 3

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$7;->c:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_bigaperture_focus_length"

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    .line 205
    :goto_0
    sget-object v2, Lcn/nubia/camera/aq/e;->a:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 206
    sget-object v2, Lcn/nubia/camera/aq/e;->a:[F

    aget v2, v2, v1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 207
    sget-object v0, Lcn/nubia/camera/aq/e;->b:[I

    aget v0, v0, v1

    int-to-float v0, v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42500000    # 52.0f

    return v0
.end method

.method a(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 6

    const-string p2, "PrettyBokehShutterButtonClickListener"

    const-string v0, "depth onPictureTaken"

    .line 183
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 185
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v2, v1, [B

    .line 186
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/f$7;->a()F

    move-result p2

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/f$7;->b()Landroid/graphics/PointF;

    move-result-object v3

    .line 190
    iget-object v4, p0, Lcn/nubia/camera/pretty/a/f$7;->c:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v4}, Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, p0, Lcn/nubia/camera/pretty/a/f$7;->a:Lcn/nubia/camera/pretty/a/b;

    new-instance v5, Lcn/nubia/camera/pretty/a/d;

    invoke-direct {v5, v2, v0, v1}, Lcn/nubia/camera/pretty/a/d;-><init>([BII)V

    float-to-int p2, p2

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, p2, v0, v1}, Lcn/nubia/camera/pretty/a/b;->a(Lcn/nubia/camera/pretty/a/d;IFF)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$7;->a:Lcn/nubia/camera/pretty/a/b;

    const/4 v1, 0x0

    float-to-int p2, p2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p2, v4, v3}, Lcn/nubia/camera/pretty/a/b;->a(Lcn/nubia/camera/pretty/a/d;IFF)V

    .line 196
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$7;->b:Lcn/nubia/camera/pretty/a/a;

    monitor-enter p2

    .line 197
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$7;->b:Lcn/nubia/camera/pretty/a/a;

    iput-object v2, v0, Lcn/nubia/camera/pretty/a/a;->b:[B

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$7;->b:Lcn/nubia/camera/pretty/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 199
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 199
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 180
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$7;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method

.method b()Landroid/graphics/PointF;
    .locals 5

    .line 214
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 215
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f$7;->c:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v1}, Lcn/nubia/camera/pretty/a/f;->c(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 216
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f$7;->c:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v3}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 217
    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 218
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 219
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v3, v4

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcn/nubia/camera/pretty/a/f$7;->a(F)F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/a/f$7;->a(F)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object v0
.end method
