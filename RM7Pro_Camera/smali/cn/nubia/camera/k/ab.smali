.class public Lcn/nubia/camera/k/ab;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/ab$a;
    }
.end annotation


# static fields
.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Lcn/nubia/camera/k/b;

.field private h:Lcn/nubia/camera/k/c;

.field private i:Lcn/nubia/camera/k/k;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/k/ab$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Lcn/nubia/camera/k/ab$a;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "AE_STATE_INACTIVE"

    const-string v1, "AE_STATE_SEARCHING"

    const-string v2, "AE_STATE_CONVERGED"

    const-string v3, "AE_STATE_LOCKED"

    const-string v4, "AE_STATE_FLASH_REQUIRED"

    const-string v5, "AE_STATE_PRECAPTURE"

    .line 306
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/ab;->q:[Ljava/lang/String;

    const-string v1, "AF_STATE_INACTIVE"

    const-string v2, "AF_STATE_PASSIVE_SCAN"

    const-string v3, "AF_STATE_PASSIVE_FOCUSED"

    const-string v4, "AF_STATE_ACTIVE_SCAN"

    const-string v5, "AF_STATE_FOCUSED_LOCKED"

    const-string v6, "AF_STATE_NOT_FOCUSED_LOCKED"

    const-string v7, "AF_STATE_PASSIVE_UNFOCUSED"

    .line 314
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/ab;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/nubia/camera/k/ab;->a:I

    .line 24
    iput v0, p0, Lcn/nubia/camera/k/ab;->b:I

    .line 25
    iput v0, p0, Lcn/nubia/camera/k/ab;->c:I

    .line 26
    iput v0, p0, Lcn/nubia/camera/k/ab;->d:I

    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcn/nubia/camera/k/ab;->e:J

    .line 28
    iput-wide v0, p0, Lcn/nubia/camera/k/ab;->f:J

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/k/ab;->l:Z

    .line 38
    iput-boolean v0, p0, Lcn/nubia/camera/k/ab;->m:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/k/ab;->n:Z

    .line 41
    iput v0, p0, Lcn/nubia/camera/k/ab;->o:I

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/k/ab;->q:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "-1"

    :goto_0
    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 9

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->i:Lcn/nubia/camera/k/k;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p1}, Lcn/nubia/camera/k/j;->a(Landroid/hardware/camera2/CaptureResult;)[Lcn/nubia/camera/k/j;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->i:Lcn/nubia/camera/k/k;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 205
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v1, v0, v2, v3}, Lcn/nubia/camera/k/k;->a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V

    :cond_0
    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 210
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    .line 212
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->d:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 215
    :catch_0
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    iput p2, p0, Lcn/nubia/camera/k/ab;->c:I

    .line 219
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 222
    :cond_2
    :goto_0
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_8

    .line 224
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 225
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iget-wide v7, p0, Lcn/nubia/camera/k/ab;->e:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_8

    .line 227
    iget v5, p0, Lcn/nubia/camera/k/ab;->a:I

    if-eq p2, v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    .line 228
    :goto_1
    iput p2, p0, Lcn/nubia/camera/k/ab;->a:I

    .line 229
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/camera/k/ab;->e:J

    .line 231
    iget-object v6, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 232
    :try_start_2
    iput p2, p0, Lcn/nubia/camera/k/ab;->b:I

    .line 233
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq p2, v4, :cond_6

    if-eq p2, v0, :cond_6

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_4

    const/4 v6, 0x6

    if-eq p2, v6, :cond_6

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_8

    .line 247
    iget-object v5, p0, Lcn/nubia/camera/k/ab;->g:Lcn/nubia/camera/k/b;

    if-eqz v5, :cond_8

    if-ne p2, v2, :cond_5

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v3

    .line 248
    :goto_2
    invoke-interface {v5, p2}, Lcn/nubia/camera/k/b;->a(Z)V

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_8

    .line 239
    iget-object v5, p0, Lcn/nubia/camera/k/ab;->h:Lcn/nubia/camera/k/c;

    if-eqz v5, :cond_8

    if-ne p2, v4, :cond_7

    move p2, v4

    goto :goto_3

    :cond_7
    move p2, v3

    .line 240
    :goto_3
    invoke-interface {v5, p2}, Lcn/nubia/camera/k/c;->a(Z)V

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 233
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 257
    :cond_8
    :goto_4
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_f

    .line 259
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 261
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iget-wide v7, p0, Lcn/nubia/camera/k/ab;->f:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_f

    .line 262
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcn/nubia/camera/k/ab;->f:J

    .line 263
    iget-object p1, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 264
    :try_start_4
    iput p2, p0, Lcn/nubia/camera/k/ab;->d:I

    .line 265
    iget-boolean v5, p0, Lcn/nubia/camera/k/ab;->m:Z

    if-nez v5, :cond_e

    if-eq p2, v2, :cond_9

    if-ne p2, v0, :cond_e

    :cond_9
    if-ne p2, v2, :cond_a

    move p2, v4

    goto :goto_5

    :cond_a
    move p2, v3

    .line 268
    :goto_5
    iput-boolean p2, p0, Lcn/nubia/camera/k/ab;->l:Z

    if-eqz p2, :cond_b

    .line 271
    iget p2, p0, Lcn/nubia/camera/k/ab;->o:I

    if-ge p2, v1, :cond_c

    add-int/2addr p2, v4

    .line 272
    iput p2, p0, Lcn/nubia/camera/k/ab;->o:I

    goto :goto_6

    .line 275
    :cond_b
    iget p2, p0, Lcn/nubia/camera/k/ab;->o:I

    if-lez p2, :cond_c

    sub-int/2addr p2, v4

    .line 276
    iput p2, p0, Lcn/nubia/camera/k/ab;->o:I

    .line 280
    :cond_c
    :goto_6
    iget p2, p0, Lcn/nubia/camera/k/ab;->o:I

    if-lt p2, v1, :cond_d

    .line 281
    iput-boolean v4, p0, Lcn/nubia/camera/k/ab;->n:Z

    goto :goto_7

    :cond_d
    if-gtz p2, :cond_e

    .line 283
    iput-boolean v3, p0, Lcn/nubia/camera/k/ab;->n:Z

    .line 293
    :cond_e
    :goto_7
    monitor-exit p1

    goto :goto_8

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p2

    :cond_f
    :goto_8
    return-void
.end method

.method public static b(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/k/ab;->r:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "-1"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;I)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;I)V

    return-void
.end method

.method public a(Lcn/nubia/b/a;IJ)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;IJ)V

    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 89
    invoke-super/range {p0 .. p6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/k/ab;->a()[Lcn/nubia/camera/k/ab$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    if-eqz p4, :cond_0

    .line 95
    invoke-interface {p4}, Lcn/nubia/camera/k/ab$a;->o_()V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    const/4 p1, 0x1

    .line 47
    invoke-direct {p0, p3, p1}, Lcn/nubia/camera/k/ab;->a(Landroid/hardware/camera2/CaptureResult;Z)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/k/ab;->a()[Lcn/nubia/camera/k/ab$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1, p3}, Lcn/nubia/camera/k/ab$a;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p3, p1}, Lcn/nubia/camera/k/ab;->a(Landroid/hardware/camera2/CaptureResult;Z)V

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/k/ab;->a()[Lcn/nubia/camera/k/ab$a;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 79
    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_2

    aget-object v1, p2, p1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1, p3}, Lcn/nubia/camera/k/ab$a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/k/ab$a;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/camera/k/ab$a;

    iput-object p1, p0, Lcn/nubia/camera/k/ab;->k:[Lcn/nubia/camera/k/ab$a;

    .line 126
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/b;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/k/ab;->g:Lcn/nubia/camera/k/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/k;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/k/ab;->i:Lcn/nubia/camera/k/k;

    return-void
.end method

.method public a()[Lcn/nubia/camera/k/ab$a;
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->k:[Lcn/nubia/camera/k/ab$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 149
    :try_start_0
    iput-wide v1, p0, Lcn/nubia/camera/k/ab;->f:J

    .line 150
    iput-wide v1, p0, Lcn/nubia/camera/k/ab;->e:J

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcn/nubia/camera/k/ab;->a:I

    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcn/nubia/camera/k/ab;->l:Z

    .line 153
    iput-boolean v1, p0, Lcn/nubia/camera/k/ab;->n:Z

    .line 154
    iput v1, p0, Lcn/nubia/camera/k/ab;->o:I

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcn/nubia/camera/k/ab$a;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/camera/k/ab$a;

    iput-object p1, p0, Lcn/nubia/camera/k/ab;->k:[Lcn/nubia/camera/k/ab$a;

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/k/ab;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 2

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/k/ab;->d:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()I
    .locals 2

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/k/ab;->b:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()I
    .locals 2

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/k/ab;->c:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/ab;->l:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/ab;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 190
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/ab;->m:Z

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/k/ab;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 196
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/ab;->m:Z

    .line 197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
