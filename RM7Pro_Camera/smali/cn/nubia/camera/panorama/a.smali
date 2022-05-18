.class public Lcn/nubia/camera/panorama/a;
.super Lcn/nubia/camera/panorama/h;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/algorithm/camera/b;
.implements Lcn/nubia/camera/al/a$a;


# instance fields
.field private p:Z

.field private q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

.field private r:Landroid/graphics/Bitmap;

.field private s:Lcn/nubia/camera/panorama/g;

.field private t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/panorama/h;-><init>()V

    .line 206
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/a;->t:Ljava/lang/Object;

    .line 46
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/a;->p:Z

    return-void
.end method

.method private a(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->c:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 254
    iput-object v1, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    .line 257
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 259
    iget v1, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    int-to-float v1, v1

    iget v2, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 260
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    .line 263
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/a;->p:Z

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " init InitParam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mDispPreviewImage w "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " h "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ArcsoftPanoramaAdapter"

    .line 264
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    const-string v1, "ArcsoftPanoramaAdapter"

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->o:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a$a;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a()Z

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    const-string v0, "release other\'s algorithm"

    .line 228
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    new-instance v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;

    invoke-direct {v0}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;-><init>()V

    .line 231
    iget-object v2, p0, Lcn/nubia/camera/panorama/a;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->a:I

    .line 232
    iget-object v2, p0, Lcn/nubia/camera/panorama/a;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    const/16 v2, 0xb4

    .line 233
    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->c:I

    .line 234
    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    .line 236
    iget v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    mul-int/lit8 v2, v2, 0x6

    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->e:I

    .line 237
    iget v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->c:I

    mul-int/lit8 v2, v2, 0x6

    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    const/4 v2, 0x5

    .line 238
    iput v2, v0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->g:I

    .line 239
    iget-boolean v2, p0, Lcn/nubia/camera/panorama/a;->p:Z

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/a;->a(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;)V

    .line 245
    new-instance v1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    invoke-direct {v1, p0}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;-><init>(Lcn/nubia/algorithm/camera/b;)V

    iput-object v1, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    .line 247
    iget-boolean v2, p0, Lcn/nubia/camera/panorama/a;->p:Z

    invoke-virtual {v1, v0, v2}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, "ArcsoftPanoramaAdapter"

    const-string v1, "stopCapture"

    .line 190
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    if-nez v1, :cond_0

    .line 193
    monitor-exit v0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->stitch()V

    .line 197
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->o:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a$a;)V

    .line 198
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    invoke-virtual {v1}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a()Z

    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    .line 202
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/a;->c(I)V

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Bitmap;IILandroid/graphics/Point;II)V
    .locals 6

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x102

    const-string v1, "ArcsoftPanoramaAdapter"

    if-eq p6, v0, :cond_b

    const/16 v0, 0x7011

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7001

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7009

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7008

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7007

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7006

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7003

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7002

    if-eq p5, v0, :cond_b

    const/16 v0, 0x7005

    if-ne p5, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 78
    :cond_2
    iget p6, p4, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    if-ltz p6, :cond_4

    iget p6, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le p6, v2, :cond_3

    goto :goto_0

    :cond_3
    move p6, v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p6, 0x1

    .line 80
    :goto_1
    iget-boolean v2, p0, Lcn/nubia/camera/panorama/a;->p:Z

    if-eqz v2, :cond_5

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "; point: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "; retCode: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_5
    iget-object p3, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 86
    iget-object p5, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 90
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/nubia/camera/panorama/a;->r:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v0, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {v4, p1, v0, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-ge p3, p5, :cond_6

    int-to-float p3, p5

    int-to-float p5, v3

    goto :goto_2

    :cond_6
    int-to-float p3, p3

    int-to-float p5, v2

    :goto_2
    div-float/2addr p3, p5

    .line 97
    iget p5, p4, Landroid/graphics/Point;->x:I

    int-to-float p5, p5

    mul-float/2addr p5, p3

    float-to-int p5, p5

    iput p5, p4, Landroid/graphics/Point;->x:I

    .line 98
    iget p5, p4, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    mul-float/2addr p5, p3

    float-to-int p3, p5

    iput p3, p4, Landroid/graphics/Point;->y:I

    const/4 p3, 0x3

    const/4 p5, 0x4

    if-ne p2, p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 p3, 0x2

    if-ne p2, p3, :cond_8

    const/4 p5, 0x5

    .line 107
    :cond_8
    :goto_3
    iget-object p2, p0, Lcn/nubia/camera/panorama/a;->d:Lcn/nubia/camera/panorama/i;

    if-eqz p2, :cond_9

    .line 108
    iget-object p2, p0, Lcn/nubia/camera/panorama/a;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {p2}, Lcn/nubia/camera/panorama/i;->l_()V

    .line 111
    :cond_9
    iget-object p2, p0, Lcn/nubia/camera/panorama/a;->s:Lcn/nubia/camera/panorama/g;

    invoke-virtual {p2, p1, p4, p5}, Lcn/nubia/camera/panorama/g;->a(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    if-eqz p6, :cond_a

    const-string p1, "move too slope need stopPanorama"

    .line 114
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/a;->e()V

    :cond_a
    return-void

    .line 69
    :cond_b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "retCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; msgCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; need stopPanorama"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/a;->e()V

    return-void
.end method

.method public a(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 271
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 273
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 274
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->setSensorData([FJI)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/panorama/f;)V
    .locals 0

    .line 51
    check-cast p1, Lcn/nubia/camera/panorama/g;

    iput-object p1, p0, Lcn/nubia/camera/panorama/a;->s:Lcn/nubia/camera/panorama/g;

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/a;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "ArcsoftPanoramaAdapter"

    const-string v1, "attatchPreviewData"

    .line 215
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->q:Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;

    if-nez v0, :cond_1

    return-void

    .line 220
    :cond_1
    invoke-virtual {v0, p1}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->process([B)Z

    return-void
.end method

.method public a([BII)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "ArcsoftPanoramaAdapter"

    const-string v2, "onFinalYuvReceived"

    .line 121
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 134
    new-instance v1, Lcn/nubia/camera/panorama/p;

    iget-object v2, v0, Lcn/nubia/camera/panorama/a;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v13, Lcn/nubia/camera/panorama/p$b;

    iget-object v3, v0, Lcn/nubia/camera/panorama/a;->i:Lcn/nubia/k/a/a;

    sget-object v4, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    .line 139
    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-static {v14, v15}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcn/nubia/camera/panorama/a;->m:Lcn/nubia/e/a;

    .line 141
    invoke-interface {v3}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v9

    iget v10, v0, Lcn/nubia/camera/panorama/a;->l:F

    iget v11, v0, Lcn/nubia/camera/panorama/a;->k:F

    .line 144
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/camera/panorama/a;->o:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    iget v4, v0, Lcn/nubia/camera/panorama/a;->f:I

    invoke-static {v3, v4}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v12

    iget v6, v0, Lcn/nubia/camera/panorama/a;->n:I

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v16, v6

    move/from16 v6, p3

    move-object/from16 v17, v1

    move-object v1, v13

    move/from16 v13, v16

    invoke-direct/range {v3 .. v15}, Lcn/nubia/camera/panorama/p$b;-><init>([BIILjava/lang/String;Ljava/lang/String;Landroid/location/Location;FFIIJ)V

    new-instance v3, Lcn/nubia/camera/panorama/a$2;

    invoke-direct {v3, v0}, Lcn/nubia/camera/panorama/a$2;-><init>(Lcn/nubia/camera/panorama/a;)V

    iget-object v4, v0, Lcn/nubia/camera/panorama/a;->o:Lcn/nubia/camera/ad/a;

    move-object/from16 v5, v17

    invoke-direct {v5, v2, v1, v3, v4}, Lcn/nubia/camera/panorama/p;-><init>(Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/p$b;Lcn/nubia/camera/panorama/p$a;Lcn/nubia/camera/ad/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 155
    invoke-virtual {v5, v1}, Lcn/nubia/camera/panorama/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    iget-object v1, v0, Lcn/nubia/camera/panorama/a;->s:Lcn/nubia/camera/panorama/g;

    invoke-virtual {v1}, Lcn/nubia/camera/panorama/g;->a()V

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    iget-object v1, v0, Lcn/nubia/camera/panorama/a;->s:Lcn/nubia/camera/panorama/g;

    invoke-virtual {v1}, Lcn/nubia/camera/panorama/g;->a()V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/a;->f()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/panorama/a$1;

    invoke-direct {v2, v0}, Lcn/nubia/camera/panorama/a$1;-><init>(Lcn/nubia/camera/panorama/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/panorama/a;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ArcsoftPanoramaAdapter"

    const-string v2, "startCapture"

    .line 174
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcn/nubia/camera/panorama/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "ArcsoftPanoramaAdapter"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize the ArcsoftPanoramaAlgorithm failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/panorama/a;->o:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, p0, v2}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a$a;I)V

    .line 180
    iget v1, p0, Lcn/nubia/camera/panorama/a;->e:I

    iput v1, p0, Lcn/nubia/camera/panorama/a;->f:I

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/a;->d()V

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
