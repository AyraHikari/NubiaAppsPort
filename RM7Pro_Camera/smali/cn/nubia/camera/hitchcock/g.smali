.class public Lcn/nubia/camera/hitchcock/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/l$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/hitchcock/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/CamcorderProfile;

.field b:Lcn/nubia/camera/bb/u;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/r/l;

.field private e:Lcn/nubia/camera/k/ah;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcn/nubia/camera/bb/z;

.field private k:Lcn/nubia/camera/hitchcock/g$a;

.field private l:Lcn/nubia/camera/bb/a;

.field private m:Lcn/nubia/camera/elefnovideo/l;

.field private final n:Landroid/media/MediaPlayer$OnCompletionListener;

.field private o:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcn/nubia/camera/hitchcock/g$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/hitchcock/g$a;-><init>(Lcn/nubia/camera/hitchcock/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    .line 63
    new-instance v0, Lcn/nubia/camera/bb/a;

    invoke-direct {v0}, Lcn/nubia/camera/bb/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->l:Lcn/nubia/camera/bb/a;

    .line 67
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    .line 106
    new-instance v0, Lcn/nubia/camera/hitchcock/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/g$1;-><init>(Lcn/nubia/camera/hitchcock/g;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    .line 71
    iput-object p2, p0, Lcn/nubia/camera/hitchcock/g;->e:Lcn/nubia/camera/k/ah;

    .line 72
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->c(I)V

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method

.method private a(IIIIZI)Lcn/nubia/camera/bb/u;
    .locals 4

    .line 547
    new-instance v0, Lcn/nubia/camera/bb/u;

    invoke-direct {v0}, Lcn/nubia/camera/bb/u;-><init>()V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 549
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/g;->e(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    .line 550
    iput-wide v1, v0, Lcn/nubia/camera/bb/u;->e:J

    .line 551
    iput p2, v0, Lcn/nubia/camera/bb/u;->h:I

    .line 552
    iput p3, v0, Lcn/nubia/camera/bb/u;->i:I

    .line 553
    iput p4, v0, Lcn/nubia/camera/bb/u;->g:I

    .line 554
    iput p6, v0, Lcn/nubia/camera/bb/u;->j:I

    if-eqz p5, :cond_0

    .line 556
    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/hitchcock/g;->a(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    .line 557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/g;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    .line 558
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->V:Lcn/nubia/camera/af/a;

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 559
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/hitchcock/g;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 560
    iget-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 562
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const-string p3, "rw"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 564
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Landroid/media/CamcorderProfile;Lcn/nubia/camera/r/l;J)Lcn/nubia/camera/bb/u;
    .locals 7

    .line 160
    iget-object p3, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/al/c;->d()I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/hitchcock/g;->f:I

    const/16 p3, 0x3a98

    .line 162
    iput p3, p1, Landroid/media/CamcorderProfile;->duration:I

    .line 164
    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, p1, Landroid/media/CamcorderProfile;->duration:I

    const/4 v5, 0x1

    const/16 v6, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/hitchcock/g;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object p3

    .line 169
    iget-object p4, p3, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lcn/nubia/camera/r/l;->a(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;)V

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float p4, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, p4, p1}, Lcn/nubia/camera/r/l;->a(FF)V

    .line 187
    :cond_0
    iget p1, p0, Lcn/nubia/camera/hitchcock/g;->f:I

    invoke-virtual {p2, p1}, Lcn/nubia/camera/r/l;->a(I)V

    return-object p3
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/r/l;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    return-object p0
.end method

.method static a(JZ)Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x3e8

    .line 504
    div-long v2, p0, v0

    const-wide/16 v4, 0x3c

    .line 505
    div-long v6, v2, v4

    .line 506
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0xa

    cmp-long v7, v8, v12

    const/16 v14, 0x30

    if-gez v7, :cond_0

    .line 514
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    .line 518
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    .line 522
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v12

    if-gez v7, :cond_2

    .line 529
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    :cond_2
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 v4, 0x2e

    .line 535
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p0, v2

    .line 536
    div-long/2addr v0, v12

    cmp-long v2, v0, v12

    if-gez v2, :cond_3

    .line 538
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_3
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 543
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->d(I)V

    return-void
.end method

.method private a(Lcn/nubia/camera/bb/w;)V
    .locals 2

    .line 452
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 454
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->a(Lcn/nubia/camera/bb/w;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    new-instance v1, Lcn/nubia/camera/hitchcock/g$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/hitchcock/g$4;-><init>(Lcn/nubia/camera/hitchcock/g;Lcn/nubia/camera/bb/w;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/g$a;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/elefnovideo/l;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/bb/z;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private b(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/content/ContentValues;
    .locals 3

    .line 579
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v1, 0x1

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-wide v1, p2, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v2, "mime_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcn/nubia/camera/bb/u;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p2, p2, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "resolution"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 590
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private b(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(I)V

    return-void
.end method

.method private b(Lcn/nubia/camera/bb/u;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcn/nubia/camera/bb/w;

    invoke-direct {v0}, Lcn/nubia/camera/bb/w;-><init>()V

    .line 347
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 348
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 349
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 350
    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    .line 351
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/bb/w;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/g;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->g()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/bb/z;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 435
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 437
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->c(I)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    new-instance v1, Lcn/nubia/camera/hitchcock/g$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/hitchcock/g$3;-><init>(Lcn/nubia/camera/hitchcock/g;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/g$a;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method static synthetic d(Lcn/nubia/camera/hitchcock/g;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->n()V

    return-void
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method private declared-synchronized f()I
    .locals 6

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    monitor-exit p0

    return v1

    .line 122
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->c(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HitchcockRecordManager"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 124
    monitor-exit p0

    return v0

    .line 128
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v4, 0x3200000

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x3

    .line 131
    monitor-exit p0

    return v0

    .line 134
    :cond_2
    :try_start_3
    new-instance v0, Lcn/nubia/camera/r/l;

    invoke-direct {v0}, Lcn/nubia/camera/r/l;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    .line 138
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-le v0, v4, :cond_3

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 140
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget v5, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v5, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 141
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iput v0, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 144
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    invoke-direct {p0, v0, v4, v2, v3}, Lcn/nubia/camera/hitchcock/g;->a(Landroid/media/CamcorderProfile;Lcn/nubia/camera/r/l;J)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l$c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 3

    const-string v0, "HitchcockRecordManager"

    const-string v1, "startRecording"

    .line 197
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 198
    iput-wide v1, p0, Lcn/nubia/camera/hitchcock/g;->h:J

    .line 199
    iput-wide v1, p0, Lcn/nubia/camera/hitchcock/g;->i:J

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->l:Lcn/nubia/camera/bb/a;

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/a;->a(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 204
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    invoke-virtual {v2}, Lcn/nubia/camera/r/l;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/hitchcock/g;->g:J

    .line 223
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->b(I)V

    .line 225
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->n()V

    return-void

    :catch_0
    const-string v1, "MediaRecorder has not been initialized.."

    .line 213
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 214
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->b(I)V

    .line 215
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 216
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->l()V

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/g$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->h()V

    .line 208
    invoke-direct {p0, v1}, Lcn/nubia/camera/hitchcock/g;->b(I)V

    .line 209
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 210
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->l()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    if-eqz v0, :cond_2

    const-string v0, "HitchcockRecordManager"

    const-string v1, "Releasing media recorder."

    .line 296
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/u;->a()V

    .line 306
    :cond_1
    iput-object v1, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    goto :goto_0

    :cond_2
    const-string v0, "HitchcockRecordManager"

    const-string v1, "Media recorder already is null"

    .line 308
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->d()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 418
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    new-instance v1, Lcn/nubia/camera/hitchcock/g$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/hitchcock/g$2;-><init>(Lcn/nubia/camera/hitchcock/g;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/g$a;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->l()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->r_()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/g$a;->removeMessages(I)V

    return-void
.end method

.method private n()V
    .locals 12

    .line 654
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_2

    .line 669
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/hitchcock/g$a;->removeMessages(I)V

    .line 670
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/camera/hitchcock/g$a;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 671
    invoke-direct {p0, v3, v2, v0}, Lcn/nubia/camera/hitchcock/g;->a(ZZLjava/lang/String;)V

    goto :goto_1

    .line 655
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 656
    iget-wide v4, p0, Lcn/nubia/camera/hitchcock/g;->g:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcn/nubia/camera/hitchcock/g;->i:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3a98

    sub-long v8, v6, v0

    .line 657
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v8, 0x3e7

    add-long/2addr v4, v8

    .line 658
    invoke-static {v4, v5, v2}, Lcn/nubia/camera/hitchcock/g;->a(JZ)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x3e8

    .line 660
    rem-long v10, v0, v8

    sub-long/2addr v8, v10

    .line 661
    iget-object v5, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    invoke-virtual {v5, v3}, Lcn/nubia/camera/hitchcock/g$a;->removeMessages(I)V

    .line 662
    iget-object v5, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    invoke-virtual {v5, v3, v8, v9}, Lcn/nubia/camera/hitchcock/g$a;->sendEmptyMessageDelayed(IJ)Z

    .line 663
    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/camera/hitchcock/g;->a(ZZLjava/lang/String;)V

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    const-string v0, "HitchcockRecordManager"

    const-string v1, "the countdown is over"

    .line 665
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/g;->b()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;
    .locals 2

    .line 572
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/hitchcock/g;->b(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/content/ContentValues;

    move-result-object p1

    .line 573
    iget-object p2, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatVideoUri mCurrentVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HitchcockRecordManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method a(J)Ljava/lang/String;
    .locals 3

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->o:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f03dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/g;->o:Ljava/text/SimpleDateFormat;

    .line 601
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 602
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g;->o:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->i()V

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->f()I

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_2
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 93
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->k()V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_shutter_sound_key"

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    .line 96
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HitchcockRecordManager"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "on"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HitchcockRecordManager"

    const-string v1, "playWithMediaPlayer"

    .line 99
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/g;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/j/a;->a(ILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcn/nubia/camera/bb/u;)V
    .locals 5

    .line 332
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iget-wide v1, p1, Lcn/nubia/camera/bb/u;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 338
    iget-wide v1, p1, Lcn/nubia/camera/bb/u;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/z;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g;->j:Lcn/nubia/camera/bb/z;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "HitchcockRecordManager"

    const-string v1, "onError"

    .line 357
    invoke-static {v0, v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/g;->b()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 230
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "HitchcockRecordManager"

    const-string v1, "stopVideoRecording"

    .line 232
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->l:Lcn/nubia/camera/bb/a;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/a;->b(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_2

    const-string v0, "HitchcockRecordManager"

    const-string v1, "VideoRecording is not started!!!"

    .line 239
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 240
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->c(I)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_1

    .line 243
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 244
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->l()V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->k:Lcn/nubia/camera/hitchcock/g$a;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/hitchcock/g$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_1
    monitor-exit p0

    return-void

    .line 250
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->j()V

    .line 251
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 252
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x4

    .line 258
    :try_start_3
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    invoke-virtual {v1}, Lcn/nubia/camera/r/l;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "HitchcockRecordManager"

    const-string v4, "stopVideoRecording stop fail"

    .line 261
    invoke-static {v3, v4, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-object v1, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iput-object v2, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    :cond_3
    move v1, v0

    .line 269
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcn/nubia/j/a;->b(I)V

    .line 271
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-static {v3, v4}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iput-object v2, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 279
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/camera/hitchcock/g;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/nubia/camera/bb/u;->f:J

    .line 280
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/bb/u;)V

    .line 283
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->h()V

    .line 285
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->f()J

    .line 286
    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v1}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 288
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->c(I)V

    .line 289
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->l()V

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->b(Lcn/nubia/camera/bb/u;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/g;->h()V

    .line 316
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/g;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lcn/nubia/camera/elefnovideo/l;
    .locals 1

    .line 389
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->m:Lcn/nubia/camera/elefnovideo/l;

    return-object v0
.end method

.method public e()Landroid/view/Surface;
    .locals 1

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g;->d:Lcn/nubia/camera/r/l;

    invoke-virtual {v0}, Lcn/nubia/camera/r/l;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
