.class public Lcn/nubia/camera/au/h;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/h$a;
    }
.end annotation


# instance fields
.field b:Lcn/nubia/camera/k/ab$a;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/b/k;

.field private e:Lcn/nubia/camera/k/t;

.field private f:Lcn/nubia/camera/k/af;

.field private g:Lcn/nubia/camera/au/e;

.field private h:F

.field private i:I

.field private j:J

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Integer;

.field private m:Z

.field private n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 41
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/au/h;->e:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcn/nubia/camera/au/h;->m:Z

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/au/h;->n:Ljava/lang/Object;

    .line 218
    new-instance v0, Lcn/nubia/camera/au/h$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/h$1;-><init>(Lcn/nubia/camera/au/h;)V

    iput-object v0, p0, Lcn/nubia/camera/au/h;->b:Lcn/nubia/camera/k/ab$a;

    return-void
.end method

.method private H()V
    .locals 14

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/au/h;->g:Lcn/nubia/camera/au/e;

    invoke-virtual {v0}, Lcn/nubia/camera/au/e;->n()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcn/nubia/camera/au/h;->g:Lcn/nubia/camera/au/e;

    invoke-virtual {v1}, Lcn/nubia/camera/au/e;->m()J

    move-result-wide v1

    const/16 v3, 0x64

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const-wide/16 v6, 0x0

    if-gtz v0, :cond_4

    cmp-long v8, v1, v6

    if-gtz v8, :cond_0

    .line 235
    iget-wide v4, p0, Lcn/nubia/camera/au/h;->j:J

    iget v8, p0, Lcn/nubia/camera/au/h;->i:I

    iget v9, p0, Lcn/nubia/camera/au/h;->h:F

    invoke-static {v4, v5, v8, v9}, Lcn/nubia/camera/au/h;->a(JIF)[J

    move-result-object v4

    const/4 v5, 0x0

    .line 236
    aget-wide v8, v4, v5

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    const/4 v5, 0x1

    .line 237
    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    goto/16 :goto_1

    .line 240
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    .line 241
    iget v8, p0, Lcn/nubia/camera/au/h;->i:I

    const/16 v9, 0x6400

    if-lt v8, v9, :cond_1

    iget v8, p0, Lcn/nubia/camera/au/h;->h:F

    cmpg-float v5, v8, v5

    if-ltz v5, :cond_2

    :cond_1
    const-wide/16 v10, 0x3c

    sget-wide v12, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v12, v10

    cmp-long v5, v1, v12

    if-lez v5, :cond_3

    .line 243
    :cond_2
    iget v5, p0, Lcn/nubia/camera/au/h;->h:F

    div-float/2addr v4, v5

    .line 244
    iget-wide v10, p0, Lcn/nubia/camera/au/h;->j:J

    long-to-float v5, v10

    mul-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/camera/au/h;->i:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    long-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    .line 245
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    goto :goto_1

    .line 251
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    cmp-long v8, v1, v6

    if-gtz v8, :cond_8

    .line 253
    iget-wide v8, p0, Lcn/nubia/camera/au/h;->j:J

    const-wide/32 v10, 0x7641700

    cmp-long v10, v8, v10

    if-ltz v10, :cond_7

    .line 254
    iget v10, p0, Lcn/nubia/camera/au/h;->h:F

    const/high16 v11, 0x41000000    # 8.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_5

    const-wide/16 v4, 0xc

    .line 255
    sget-wide v8, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_6

    const-wide/16 v4, 0x6

    .line 257
    sget-wide v8, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    goto :goto_0

    :cond_6
    cmpg-float v5, v10, v5

    if-gez v5, :cond_7

    div-float/2addr v4, v10

    long-to-float v5, v8

    mul-float/2addr v5, v4

    float-to-long v4, v5

    .line 260
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    .line 263
    :cond_7
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    if-nez v4, :cond_9

    .line 264
    iget-wide v4, p0, Lcn/nubia/camera/au/h;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    goto :goto_1

    .line 268
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    :cond_9
    :goto_1
    cmp-long v4, v1, v6

    if-gtz v4, :cond_b

    .line 272
    iget-object v4, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcn/nubia/camera/au/e;->b:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    if-gtz v0, :cond_a

    .line 274
    iget-object v4, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    sget-wide v6, Lcn/nubia/camera/au/e;->b:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    .line 276
    :cond_a
    sget-wide v3, Lcn/nubia/camera/au/e;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    .line 278
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateCaptureISO_ExposureTime. mPreviewExposureTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/camera/au/h;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPreviewISO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/camera/au/h;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPreviewY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/camera/au/h;->h:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exposureTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureExposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureISO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StarTrackStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/h;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/camera/au/h;->i:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/h;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcn/nubia/camera/au/h;->j:J

    return-wide p1
.end method

.method private synthetic a(Lcn/nubia/camera/k/ab$a;Z)V
    .locals 4

    const-string p2, "StarTrackStreamController"

    const-string v0, "call capture"

    .line 142
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->b()V

    .line 144
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p2

    .line 145
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->o()Lcn/nubia/b/d;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/nubia/b/m;

    iget-object v2, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 144
    invoke-virtual {p2, v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    .line 148
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->p()Lcn/nubia/b/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/au/h$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/au/h$a;-><init>(Lcn/nubia/camera/au/h;Lcn/nubia/camera/k/ab$a;)V

    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->v()Lcom/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {v0, p2, v1, p1}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/h;)Z
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->B()Z

    move-result p0

    return p0
.end method

.method private static a(JIF)[J
    .locals 8

    int-to-long v0, p2

    mul-long v2, v0, p0

    .line 316
    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 317
    div-long p0, v2, v6

    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p0, v0

    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr p0, v0

    .line 318
    div-long v0, v2, p0

    const/16 v2, 0x6400

    if-lt p2, v2, :cond_0

    const/high16 p2, 0x41f00000    # 30.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_0

    const-wide/16 p0, 0x20

    .line 320
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    mul-long/2addr p0, v2

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p2

    long-to-float p3, v0

    mul-float/2addr p3, p2

    float-to-int p2, p3

    int-to-long p2, p2

    const-wide/16 v0, 0xc80

    .line 324
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [J

    const/4 p3, 0x0

    aput-wide v0, p2, p3

    const/4 p3, 0x1

    aput-wide p0, p2, p3

    return-object p2
.end method

.method static synthetic b(Lcn/nubia/camera/au/h;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/au/h;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/au/h;)Lcn/nubia/camera/k/af;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/au/h;)Lcn/nubia/b/a;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->p()Lcn/nubia/b/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/au/h;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->C()V

    return-void
.end method

.method public static synthetic lambda$x2YXzh0FLBgeyuBBbTHoQXHwpcI(Lcn/nubia/camera/au/h;Lcn/nubia/camera/k/ab$a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/ab$a;Z)V

    return-void
.end method


# virtual methods
.method protected E()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/au/h;->a(I[Lcn/nubia/b/m;)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 61
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 62
    check-cast p4, Lcn/nubia/camera/au/e;

    iput-object p4, p0, Lcn/nubia/camera/au/h;->g:Lcn/nubia/camera/au/e;

    .line 64
    iget-object p2, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    if-nez p2, :cond_0

    .line 65
    new-instance p2, Lcn/nubia/camera/k/af;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/af;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    :cond_0
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/camera/au/h;->m:Z

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/au/h;->b:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/af$a;)V
    .locals 4

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    .line 155
    iput-object v0, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/au/h;->g:Lcn/nubia/camera/au/e;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/au/e;->a(IJ)V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/au/h;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af$a;)V

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/ab$a;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->d()Z

    move-result v0

    const-string v1, "StarTrackStreamController"

    if-eqz v0, :cond_0

    const-string p1, "is Taking"

    .line 127
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "start starTrack"

    .line 133
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcn/nubia/camera/au/h;->H()V

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/au/h;->g:Lcn/nubia/camera/au/e;

    iget-object v1, p0, Lcn/nubia/camera/au/h;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/h;->k:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/au/e;->a(IJ)V

    if-eqz p1, :cond_2

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/au/h;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 141
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->i()J

    move-result-wide v0

    new-instance v2, Lcn/nubia/camera/au/-$$Lambda$h$x2YXzh0FLBgeyuBBbTHoQXHwpcI;

    invoke-direct {v2, p0, p2}, Lcn/nubia/camera/au/-$$Lambda$h$x2YXzh0FLBgeyuBBbTHoQXHwpcI;-><init>(Lcn/nubia/camera/au/h;Lcn/nubia/camera/k/ab$a;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, v2, p2}, Lcn/nubia/camera/k/af;->a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V

    .line 150
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->C()V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/au/h;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->b()V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 120
    iget-object v1, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, v0}, Lcn/nubia/camera/au/h;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method protected b()V
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 87
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->E()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "StarTrackStreamController"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v0, v5, v8, v9}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    .line 92
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x23

    invoke-direct {v0, v5, v8, v9, v3}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/au/h;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->o()Lcn/nubia/b/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    iget-object v5, p0, Lcn/nubia/camera/au/h;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->w()Lcom/a/a/a/d;

    move-result-object v8

    invoke-interface {v8}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    invoke-virtual {v0, v5, v8}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v3, [Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v3}, Lcn/nubia/camera/k/af;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Preview Session mode: 0X%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->c()I

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/au/h;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/h;->d:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcn/nubia/camera/au/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v8

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0, v8, v9, v7}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result v5

    new-array v0, v3, [Ljava/lang/Object;

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Snapshot Session mode: 0X%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lcn/nubia/camera/au/h;->c:Lcn/nubia/b/n;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/au/h;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 215
    iput p1, p0, Lcn/nubia/camera/au/h;->h:F

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 166
    iget-boolean v0, p0, Lcn/nubia/camera/au/h;->m:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/au/h;->f:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->a()V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/au/h;->b:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/h;->b(Lcn/nubia/camera/k/ab$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcn/nubia/camera/au/h;->m:Z

    return-void
.end method
