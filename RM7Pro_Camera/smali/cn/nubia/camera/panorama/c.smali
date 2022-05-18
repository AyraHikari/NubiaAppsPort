.class public Lcn/nubia/camera/panorama/c;
.super Lcn/nubia/camera/panorama/h;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/a$a;


# instance fields
.field private p:Lcn/nubia/camera/panorama/p;

.field private q:Lcn/nubia/camera/panorama/b;

.field private r:Z

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:J


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/panorama/h;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/c;->r:Z

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/c;->s:Z

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcn/nubia/camera/panorama/c;->t:F

    .line 234
    iput v0, p0, Lcn/nubia/camera/panorama/c;->u:F

    .line 235
    iput v0, p0, Lcn/nubia/camera/panorama/c;->v:F

    const-wide/16 v0, 0x0

    .line 236
    iput-wide v0, p0, Lcn/nubia/camera/panorama/c;->w:J

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/c;->r:Z

    return-void
.end method

.method private declared-synchronized a(FZ)I
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 270
    :try_start_0
    iput p1, p0, Lcn/nubia/camera/panorama/c;->t:F

    goto :goto_0

    .line 272
    :cond_0
    iget p2, p0, Lcn/nubia/camera/panorama/c;->t:F

    add-float/2addr p2, p1

    iput p2, p0, Lcn/nubia/camera/panorama/c;->t:F

    .line 273
    :goto_0
    iget p1, p0, Lcn/nubia/camera/panorama/c;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(FFZ)V
    .locals 0

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 260
    :try_start_0
    iput p1, p0, Lcn/nubia/camera/panorama/c;->u:F

    .line 261
    iput p1, p0, Lcn/nubia/camera/panorama/c;->v:F

    goto :goto_0

    .line 263
    :cond_0
    iget p3, p0, Lcn/nubia/camera/panorama/c;->u:F

    add-float/2addr p3, p1

    iput p3, p0, Lcn/nubia/camera/panorama/c;->u:F

    .line 264
    iget p1, p0, Lcn/nubia/camera/panorama/c;->v:F

    add-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/panorama/c;->v:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(J)V
    .locals 1

    .line 281
    invoke-static {}, Lcn/nubia/camera/panorama/k;->a()Lcn/nubia/camera/panorama/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/panorama/k;->a(J)V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/panorama/i;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/c;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/panorama/c;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 285
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/c;->r:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---DocPanorama---:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocPanoramaAdapter"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private c()J
    .locals 2

    .line 277
    invoke-static {}, Lcn/nubia/camera/panorama/k;->a()Lcn/nubia/camera/panorama/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/k;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcn/nubia/camera/panorama/h;->a()V

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->o:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a$a;)V

    const-string v0, "DocPanoramaAdapter"

    const-string v1, "unregister gyro"

    .line 40
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "DocPanoramaAdapter"

    const-string v2, "stop panorama"

    .line 86
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcn/nubia/camera/panorama/k;->a()Lcn/nubia/camera/panorama/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/panorama/k;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/camera/panorama/c;->c(I)V

    .line 95
    iget-object v2, v0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v2}, Lcn/nubia/camera/panorama/b;->b()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const-string v2, "[stopCapture] receive pano frame < 5"

    .line 96
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaDestroy(J)V

    .line 98
    invoke-direct {v0, v4, v5}, Lcn/nubia/camera/panorama/c;->a(J)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->f()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/panorama/c$1;

    invoke-direct {v2, v0}, Lcn/nubia/camera/panorama/c$1;-><init>(Lcn/nubia/camera/panorama/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 107
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-static {v6, v7, v2, v3}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaResult(J[IZ)[B

    move-result-object v9

    .line 108
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaDestroy(J)V

    const-string v6, "Panorama done! Data received"

    .line 109
    invoke-static {v1, v6}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 113
    new-instance v1, Lcn/nubia/camera/panorama/p;

    iget-object v6, v0, Lcn/nubia/camera/panorama/c;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Lcn/nubia/camera/panorama/p$b;

    const/4 v15, 0x0

    aget v10, v2, v15

    aget v11, v2, v3

    iget-object v2, v0, Lcn/nubia/camera/panorama/c;->i:Lcn/nubia/k/a/a;

    sget-object v3, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    .line 118
    invoke-virtual {v3}, Lcn/nubia/camera/af/a;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v12

    .line 119
    invoke-static/range {v19 .. v20}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcn/nubia/camera/panorama/c;->m:Lcn/nubia/e/a;

    .line 120
    invoke-interface {v2}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v14

    iget v2, v0, Lcn/nubia/camera/panorama/c;->l:F

    iget v3, v0, Lcn/nubia/camera/panorama/c;->k:F

    iget v8, v0, Lcn/nubia/camera/panorama/c;->e:I

    iget v4, v0, Lcn/nubia/camera/panorama/c;->n:I

    move v5, v8

    move-object v8, v7

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v8 .. v20}, Lcn/nubia/camera/panorama/p$b;-><init>([BIILjava/lang/String;Ljava/lang/String;Landroid/location/Location;FFIIJ)V

    new-instance v2, Lcn/nubia/camera/panorama/c$2;

    invoke-direct {v2, v0}, Lcn/nubia/camera/panorama/c$2;-><init>(Lcn/nubia/camera/panorama/c;)V

    iget-object v3, v0, Lcn/nubia/camera/panorama/c;->o:Lcn/nubia/camera/ad/a;

    invoke-direct {v1, v6, v7, v2, v3}, Lcn/nubia/camera/panorama/p;-><init>(Landroid/content/ContentResolver;Lcn/nubia/camera/panorama/p$b;Lcn/nubia/camera/panorama/p$a;Lcn/nubia/camera/ad/a;)V

    iput-object v1, v0, Lcn/nubia/camera/panorama/c;->p:Lcn/nubia/camera/panorama/p;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 132
    invoke-virtual {v1, v2}, Lcn/nubia/camera/panorama/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaGetErrorStr(J)Ljava/lang/String;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/panorama/c;->f()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/panorama/c$3;

    invoke-direct {v2, v0}, Lcn/nubia/camera/panorama/c$3;-><init>(Lcn/nubia/camera/panorama/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 v1, 0x0

    .line 142
    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/panorama/c;->a(J)V

    .line 143
    iget-object v1, v0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v1}, Lcn/nubia/camera/panorama/b;->a()V

    :goto_1
    return-void
.end method

.method public a(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 242
    iget-wide v0, p0, Lcn/nubia/camera/panorama/c;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 243
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcn/nubia/camera/panorama/c;->w:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v2

    .line 245
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    neg-float v2, v2

    const v3, 0x42652ee1

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v4, v0

    invoke-direct {p0, v2, v4, v1}, Lcn/nubia/camera/panorama/c;->a(FFZ)V

    .line 247
    iget-boolean v2, p0, Lcn/nubia/camera/panorama/c;->s:Z

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcn/nubia/camera/panorama/c;->a(FZ)I

    goto :goto_0

    .line 250
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    neg-float v2, v2

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcn/nubia/camera/panorama/c;->a(FZ)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, v0, v0, v1}, Lcn/nubia/camera/panorama/c;->a(FFZ)V

    .line 253
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/panorama/c;->a(FZ)I

    .line 255
    :goto_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcn/nubia/camera/panorama/c;->w:J

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/k/a/a;FF)V
    .locals 0

    .line 31
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/panorama/h;->a(Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/k/a/a;FF)V

    .line 32
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a$a;I)V

    const-string p1, "DocPanoramaAdapter"

    const-string p2, "register gyro"

    .line 33
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/camera/panorama/f;)V
    .locals 0

    .line 45
    check-cast p1, Lcn/nubia/camera/panorama/b;

    iput-object p1, p0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    return-void
.end method

.method public a([B)V
    .locals 14

    .line 149
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "there is no panorama engine!"

    .line 150
    invoke-virtual {p0, p1, v1}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    new-array v0, v0, [I

    .line 159
    iget-boolean v4, p0, Lcn/nubia/camera/panorama/c;->r:Z

    if-eqz v4, :cond_1

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 162
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v4

    iget-object v6, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v6, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v11, 0x0

    iget v6, p0, Lcn/nubia/camera/panorama/c;->u:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v6, v10

    float-to-int v12, v6

    iget v6, p0, Lcn/nubia/camera/panorama/c;->v:F

    mul-float/2addr v6, v10

    float-to-int v13, v6

    move-object v6, p1

    move-object v10, v0

    invoke-static/range {v4 .. v13}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaProcess(J[BII[I[IIII)I

    move-result v4

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the time elapsed for panorama process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaGetDirection(J)I

    move-result v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachPreview Status : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; dir: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "panoOffset: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v7, v0, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " x "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x1

    aget v9, v0, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v3, p1, v4, v2, v0}, Lcn/nubia/camera/panorama/b;->a([BII[I)I

    move-result p1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after showSpanning attachPreview Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;)V

    const/16 v0, 0x65

    if-eqz p1, :cond_4

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x66

    if-ne v0, p1, :cond_3

    .line 180
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/c;->a(I)V

    return-void

    .line 183
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meet error. errorID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocPanoramaAdapter"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaGetErrorStr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/c;->a(I)V

    return-void

    :cond_4
    :goto_0
    const/16 v3, 0x21

    if-eq v2, v3, :cond_8

    const/16 v3, 0x11

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 189
    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/panorama/c;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v1, :cond_6

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/panorama/c;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {v1}, Lcn/nubia/camera/panorama/i;->l_()V

    :cond_6
    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 195
    invoke-direct {p0, p1, v8}, Lcn/nubia/camera/panorama/c;->a(FZ)I

    .line 196
    invoke-direct {p0, p1, p1, v8}, Lcn/nubia/camera/panorama/c;->a(FFZ)V

    :cond_7
    return-void

    .line 174
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaGetErrorStr(J)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move direction error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/c;->a(I)V

    return-void
.end method

.method public b()V
    .locals 13

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "DocPanoramaAdapter"

    if-eqz v0, :cond_0

    const-string v0, "[startCapture]: Panorama engine is init, destroy"

    .line 51
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaDestroy(J)V

    .line 53
    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/panorama/c;->a(J)V

    :cond_0
    const-string v0, "start panorama"

    .line 56
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/b;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v8, v0

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/b;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v9, v0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "panoramaInit FrameSize:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ResW="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ResH="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcn/nubia/camera/panorama/c;->u:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/camera/panorama/c;->v:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v11, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v5

    .line 64
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use gyro in pano process: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->b:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v10, 0x32

    iget-boolean v12, p0, Lcn/nubia/camera/panorama/c;->r:Z

    invoke-static/range {v6 .. v12}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaInit(IIIIIZZ)J

    move-result-wide v0

    .line 69
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/panorama/c;->a(J)V

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/panorama/c;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "Init engine error!"

    const/4 v1, -0x1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {p0, v1}, Lcn/nubia/camera/panorama/c;->c(I)V

    return-void

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanoramaVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/panorama/DocPanoramaEngine;->panoramaGetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/panorama/c;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/panorama/c;->q:Lcn/nubia/camera/panorama/b;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/b;->a()V

    .line 79
    invoke-direct {p0, v4, v4, v5}, Lcn/nubia/camera/panorama/c;->a(FFZ)V

    .line 80
    invoke-direct {p0, v4, v5}, Lcn/nubia/camera/panorama/c;->a(FZ)I

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/c;->d()V

    return-void
.end method
