.class public Lcn/nubia/camera/aimoon/j;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/j$a;
    }
.end annotation


# static fields
.field private static final e:[I


# instance fields
.field a:[I

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:I

.field private f:J

.field private g:I

.field private h:I

.field private final i:[I

.field private j:Z

.field private k:Lcn/nubia/camera/v/b;

.field private l:Lcn/nubia/camera/ad/a;

.field private m:Z

.field private n:Z

.field private o:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcn/nubia/camera/v/b$c;

.field private r:Lcn/nubia/camera/aimoon/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 29
    sput-object v0, Lcn/nubia/camera/aimoon/j;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/j;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcn/nubia/camera/aimoon/j;->d:I

    const-wide/32 v1, 0x989680

    .line 32
    iput-wide v1, p0, Lcn/nubia/camera/aimoon/j;->f:J

    const/16 v1, 0x64

    .line 33
    iput v1, p0, Lcn/nubia/camera/aimoon/j;->g:I

    .line 34
    iput v1, p0, Lcn/nubia/camera/aimoon/j;->h:I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 35
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    new-array v1, v1, [I

    .line 36
    iput-object v1, p0, Lcn/nubia/camera/aimoon/j;->i:[I

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->j:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->m:Z

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->n:Z

    .line 339
    new-instance v0, Lcn/nubia/camera/aimoon/j$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/j$1;-><init>(Lcn/nubia/camera/aimoon/j;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/j;->q:Lcn/nubia/camera/v/b$c;

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/aimoon/j;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcn/nubia/camera/aimoon/j;->l:Lcn/nubia/camera/ad/a;

    .line 52
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 53
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    iput-object p2, p0, Lcn/nubia/camera/aimoon/j;->o:Landroid/util/Range;

    .line 54
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    iput-object p1, p0, Lcn/nubia/camera/aimoon/j;->p:Landroid/util/Range;

    return-void

    :array_0
    .array-data 4
        0x4e20
        0x64
        0x64
    .end array-data
.end method

.method private static a(Landroid/graphics/Bitmap;[I)D
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 309
    sget-object v2, Lcn/nubia/camera/aimoon/j;->e:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 312
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 313
    sget-object v4, Lcn/nubia/camera/aimoon/j;->e:[I

    invoke-static {p0, v1, v3, v4}, Lcom/zte/moon/MoonApi;->calcMainHistogram(Landroid/graphics/Bitmap;II[I)V

    const-wide/16 v4, 0x0

    const/16 p0, 0x80

    :goto_1
    if-ge p0, v2, :cond_1

    .line 317
    sget-object v6, Lcn/nubia/camera/aimoon/j;->e:[I

    aget v6, v6, p0

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    long-to-double v4, v4

    mul-int/2addr v1, v3

    int-to-double v1, v1

    div-double/2addr v4, v1

    .line 321
    sget-boolean p0, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz p0, :cond_2

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "percent: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[MoonDebug] MainEvController"

    invoke-static {v1, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    aget p0, p1, v0

    const v0, 0x9c40

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lt p0, v0, :cond_3

    const/4 p0, 0x1

    aget v0, p1, p0

    const/4 v3, 0x2

    aget v6, p1, v3

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x64

    const/16 v6, 0x1f4

    if-le v0, v6, :cond_3

    .line 327
    aget p0, p1, p0

    aget p1, p1, v3

    mul-int/2addr p0, p1

    int-to-double p0, p0

    const-wide v6, 0x40e86a0000000000L    # 50000.0

    div-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p0, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr p0, v10

    .line 328
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v4, v10

    const-wide v10, 0x3fa47ae147ae147bL    # 0.04

    div-double/2addr v4, v10

    .line 330
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    .line 331
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    add-double/2addr p0, v3

    .line 333
    invoke-static {v8, v9, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v1, p0

    const-wide p0, 0x3fd6666666666666L    # 0.35

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    :cond_3
    return-wide v1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aimoon/j;->i:[I

    iget-wide v2, p0, Lcn/nubia/camera/aimoon/j;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 190
    iget v2, p0, Lcn/nubia/camera/aimoon/j;->g:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 191
    iget v2, p0, Lcn/nubia/camera/aimoon/j;->h:I

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 193
    aget v2, v1, v3

    const v6, 0x9c40

    if-lt v2, v6, :cond_0

    aget v2, v1, v4

    const/16 v6, 0x190

    if-lt v2, v6, :cond_0

    .line 194
    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->o:Landroid/util/Range;

    iget-object v6, p0, Lcn/nubia/camera/aimoon/j;->p:Landroid/util/Range;

    iget-object v7, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    invoke-static {p1, v2, v6, v1, v7}, Lcn/nubia/camera/aimoon/j;->a(Landroid/graphics/Bitmap;Landroid/util/Range;Landroid/util/Range;[I[I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    aget v2, v1, v3

    aput v2, p1, v3

    .line 197
    aget v2, v1, v4

    aput v2, p1, v4

    .line 198
    aget v1, v1, v5

    aput v1, p1, v5

    .line 200
    :goto_0
    sget-boolean p1, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "[MoonDebug] MainEvController"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainProcessPreview bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; ssampled_exposure_time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/camera/aimoon/j;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sampled_iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/aimoon/j;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; sampled_boost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/aimoon/j;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/util/Range;Landroid/util/Range;[I[I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;[I[I)V"
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 234
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 235
    aget v4, v0, v3

    const/4 v5, 0x2

    .line 236
    aget v6, v0, v5

    move-object/from16 v7, p0

    .line 238
    invoke-static {v7, v0}, Lcn/nubia/camera/aimoon/j;->a(Landroid/graphics/Bitmap;[I)D

    move-result-wide v7

    int-to-double v9, v2

    mul-double/2addr v9, v7

    int-to-double v11, v4

    mul-double/2addr v11, v9

    int-to-double v13, v6

    mul-double/2addr v11, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v15

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    mul-int v0, v0, v17

    div-int/lit8 v0, v0, 0x64

    move/from16 v18, v6

    int-to-long v5, v0

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    mul-int v0, v0, v19

    div-int/lit8 v0, v0, 0x64

    move/from16 v20, v4

    int-to-long v3, v0

    const v0, 0x11170

    .line 243
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v21, v2

    int-to-long v1, v0

    .line 245
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "factor: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "[MoonDebug] MainEvController"

    invoke-static {v15, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v7, v15

    if-lez v0, :cond_4

    double-to-long v3, v9

    cmp-long v0, v3, v1

    if-ltz v0, :cond_3

    long-to-double v3, v1

    div-double v7, v11, v3

    long-to-double v5, v5

    cmpl-double v0, v7, v5

    if-ltz v0, :cond_1

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v7, v5

    if-gtz v0, :cond_2

    const-wide/16 v5, 0x64

    double-to-long v3, v11

    .line 259
    div-long/2addr v3, v1

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v7

    div-double/2addr v11, v3

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v11, v3

    double-to-long v3, v11

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v5, v22

    goto :goto_0

    :cond_3
    move/from16 v0, v20

    int-to-long v0, v0

    move/from16 v2, v18

    int-to-long v5, v2

    move-wide/from16 v22, v0

    move-wide v1, v3

    move-wide/from16 v3, v22

    :goto_0
    long-to-int v0, v1

    const/4 v1, 0x0

    .line 270
    aput v0, p4, v1

    long-to-int v0, v3

    const/4 v1, 0x1

    .line 271
    aput v0, p4, v1

    long-to-int v0, v5

    const/4 v1, 0x2

    .line 272
    aput v0, p4, v1

    goto/16 :goto_2

    :cond_4
    move/from16 v2, v18

    move/from16 v0, v20

    cmpg-double v1, v7, v15

    if-gez v1, :cond_7

    mul-int v1, v0, v2

    int-to-double v1, v1

    mul-double/2addr v1, v7

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v5

    long-to-double v3, v3

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_6

    move/from16 v1, v21

    int-to-long v1, v1

    mul-double/2addr v13, v7

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v3, v13, v3

    if-ltz v3, :cond_5

    int-to-long v3, v0

    double-to-long v5, v13

    goto :goto_1

    .line 284
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v3

    mul-long v3, v1, v5

    long-to-double v3, v3

    div-double/2addr v11, v3

    double-to-long v3, v11

    goto :goto_1

    .line 288
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v0

    mul-long v0, v3, v5

    long-to-double v0, v0

    div-double/2addr v11, v0

    double-to-long v1, v11

    :goto_1
    long-to-int v0, v1

    const/4 v7, 0x0

    .line 293
    aput v0, p4, v7

    long-to-int v0, v3

    const/4 v3, 0x1

    .line 294
    aput v0, p4, v3

    long-to-int v0, v5

    const/4 v4, 0x2

    .line 295
    aput v0, p4, v4

    goto :goto_2

    :cond_7
    move/from16 v1, v21

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 298
    aput v1, p4, v7

    .line 299
    aput v0, p4, v3

    .line 300
    aput v2, p4, v4

    :goto_2
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/j;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/nubia/camera/aimoon/j;->n:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MainEvController"

    const-string v1, "release"

    .line 58
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcn/nubia/camera/aimoon/j;->d:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->j:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/aimoon/j;->f:J

    .line 83
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/aimoon/j;->g:I

    .line 84
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/aimoon/j;->h:I

    .line 86
    sget-boolean v1, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    const-string v1, "[MoonDebug] MainEvController"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    iget-object p1, p0, Lcn/nubia/camera/aimoon/j;->r:Lcn/nubia/camera/aimoon/j$a;

    if-eqz p1, :cond_1

    .line 95
    iget-wide v0, p0, Lcn/nubia/camera/aimoon/j;->f:J

    iget v2, p0, Lcn/nubia/camera/aimoon/j;->g:I

    int-to-long v2, v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcn/nubia/camera/aimoon/j$a;->a(JJ)V

    .line 98
    :cond_1
    sget-boolean p1, Lcn/nubia/camera/aimoon/l;->e:Z

    if-eqz p1, :cond_2

    return-void

    .line 101
    :cond_2
    iget p1, p0, Lcn/nubia/camera/aimoon/j;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/aimoon/j;->d:I

    .line 103
    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    .line 107
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :try_start_3
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->m:Z

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 110
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception p1

    .line 92
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/aimoon/j$a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/aimoon/j;->r:Lcn/nubia/camera/aimoon/j$a;

    return-void
.end method

.method public b()[I
    .locals 5

    .line 69
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [I

    .line 73
    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->a:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v1, v3

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 11

    const-string v0, "MainEvController"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/j;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcn/nubia/camera/v/b;

    sget-object v1, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v2, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Z)V

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 125
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->j:Z

    if-nez v0, :cond_5

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 133
    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->m:Z

    .line 136
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->q:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 139
    monitor-enter p0

    .line 140
    :goto_2
    :try_start_3
    iget-boolean v1, p0, Lcn/nubia/camera/aimoon/j;->n:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/nubia/camera/aimoon/j;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    .line 142
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 144
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 147
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/j;->n:Z

    .line 148
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->g()I

    move-result v2

    .line 152
    iget-object v3, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->h()I

    move-result v3

    .line 153
    iget-object v4, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v4}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    if-eqz v1, :cond_0

    array-length v4, v1

    mul-int v5, v2, v3

    mul-int/lit8 v6, v5, 0x4

    if-eq v4, v6, :cond_3

    goto :goto_0

    .line 160
    :cond_3
    new-array v4, v5, [I

    move v6, v0

    :goto_3
    if-ge v0, v5, :cond_4

    .line 162
    aget-byte v7, v1, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v1, v10

    and-int/2addr v10, v8

    invoke-static {v8, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_3

    .line 164
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/j;->a(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 148
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 136
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 169
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/aimoon/j;->k:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    const-string v0, "MainEvController"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/j;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
