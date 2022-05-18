.class public Lcn/nubia/camera/pretty/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/a/f$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/pretty/a/g;

.field private c:Lcn/nubia/camera/g/h;

.field private d:Lcn/nubia/camera/pretty/a/e;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Lcn/nubia/camera/pretty/b$a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/a/g;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/a/f;->f:Z

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/f;->g:Ljava/lang/Object;

    .line 582
    new-instance v0, Lcn/nubia/camera/pretty/a/f$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/pretty/a/f$5;-><init>(Lcn/nubia/camera/pretty/a/f;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    .line 73
    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    .line 74
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f;->e:Landroid/graphics/Rect;

    .line 76
    new-instance p2, Lcn/nubia/camera/pretty/a/f$1;

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcn/nubia/camera/pretty/a/f$1;-><init>(Lcn/nubia/camera/pretty/a/f;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f;->c:Lcn/nubia/camera/g/h;

    return-void
.end method

.method private a([BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v2, 0x8

    add-int/2addr v2, p2

    .line 518
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/a/f;[B)Lcn/nubia/camera/pretty/a/f$a;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/f;->a([B)Lcn/nubia/camera/pretty/a/f$a;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Lcn/nubia/camera/pretty/a/f$a;
    .locals 8

    const-string v0, "PrettyBokehShutterButtonClickListener"

    const-string v1, "parseBokehInfo"

    .line 473
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 474
    array-length v2, p1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    goto/16 :goto_2

    .line 483
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin parseBokehInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v2, Lcn/nubia/camera/pretty/a/f$a;

    invoke-direct {v2, p0, v1}, Lcn/nubia/camera/pretty/a/f$a;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/f$1;)V

    const/4 v4, 0x0

    .line 485
    invoke-direct {p0, p1, v4}, Lcn/nubia/camera/pretty/a/f;->a([BI)I

    move-result v5

    iput v5, v2, Lcn/nubia/camera/pretty/a/f$a;->a:I

    const/4 v5, 0x4

    .line 486
    invoke-direct {p0, p1, v5}, Lcn/nubia/camera/pretty/a/f;->a([BI)I

    move-result v5

    iput v5, v2, Lcn/nubia/camera/pretty/a/f$a;->b:I

    const/16 v5, 0x8

    .line 487
    invoke-direct {p0, p1, v5}, Lcn/nubia/camera/pretty/a/f;->a([BI)I

    move-result v5

    iput v5, v2, Lcn/nubia/camera/pretty/a/f$a;->c:I

    const/16 v5, 0xc

    .line 488
    invoke-direct {p0, p1, v5}, Lcn/nubia/camera/pretty/a/f;->a([BI)I

    move-result v5

    iput v5, v2, Lcn/nubia/camera/pretty/a/f$a;->d:I

    const/16 v5, 0x10

    .line 489
    invoke-direct {p0, p1, v5}, Lcn/nubia/camera/pretty/a/f;->a([BI)I

    move-result v5

    .line 496
    array-length v6, p1

    const/16 v7, 0x20

    if-le v6, v7, :cond_3

    const/16 v4, 0x64

    if-le v5, v4, :cond_2

    .line 497
    array-length v4, p1

    sub-int/2addr v4, v3

    if-ge v4, v5, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v1, Lcn/nubia/camera/pretty/a/d;

    invoke-direct {v1, p1, v3, v5}, Lcn/nubia/camera/pretty/a/d;-><init>([BII)V

    iput-object v1, v2, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    goto :goto_1

    .line 498
    :cond_2
    :goto_0
    iput-object v1, v2, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    goto :goto_1

    .line 503
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new solution "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    .line 505
    iput-object v1, v2, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    goto :goto_1

    .line 507
    :cond_4
    new-instance p1, Lcn/nubia/camera/pretty/a/d;

    invoke-direct {p0, v5}, Lcn/nubia/camera/pretty/a/f;->a(I)[B

    move-result-object v1

    invoke-direct {p1, v1, v4, v5}, Lcn/nubia/camera/pretty/a/d;-><init>([BII)V

    iput-object p1, v2, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    .line 510
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BokehInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcn/nubia/camera/pretty/a/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    :goto_2
    const-string v2, "return parseBokehInfo"

    .line 475
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    const-string p1, "null"

    .line 477
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 479
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v1
.end method

.method private a(Lcn/nubia/camera/pretty/a/b;)V
    .locals 8

    .line 158
    new-instance v0, Lcn/nubia/camera/pretty/a/a;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/pretty/a/a;-><init>(Lcn/nubia/camera/ad/a;)V

    .line 159
    iput-object p1, v0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    .line 161
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f;->c:Lcn/nubia/camera/g/h;

    new-instance v4, Lcn/nubia/camera/pretty/a/f$6;

    invoke-direct {v4, p0, p1, v0}, Lcn/nubia/camera/pretty/a/f$6;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;Lcn/nubia/camera/pretty/a/a;)V

    new-instance v5, Lcn/nubia/camera/pretty/a/f$7;

    invoke-direct {v5, p0, p1, v0}, Lcn/nubia/camera/pretty/a/f$7;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;Lcn/nubia/camera/pretty/a/a;)V

    new-instance v6, Lcn/nubia/camera/pretty/a/f$8;

    invoke-direct {v6, p0}, Lcn/nubia/camera/pretty/a/f$8;-><init>(Lcn/nubia/camera/pretty/a/f;)V

    new-instance v7, Lcn/nubia/camera/pretty/a/f$9;

    invoke-direct {v7, p0}, Lcn/nubia/camera/pretty/a/f$9;-><init>(Lcn/nubia/camera/pretty/a/f;)V

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/pretty/a/g;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 253
    new-instance v1, Lcn/nubia/camera/pretty/a/f$10;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/pretty/a/f$10;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V

    iput-object v1, v0, Lcn/nubia/camera/pretty/a/a;->d:Lcn/nubia/camera/pretty/a/a$a;

    .line 260
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/a/a;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/a/f;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->i()Z

    move-result p0

    return p0
.end method

.method private a(I)[B
    .locals 5

    .line 524
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/camera/bokeh_depth.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 527
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/vendor/camera/bokeh_depth.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 535
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-lt v3, p1, :cond_1

    .line 538
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v1, v2, v3, p1}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v2

    .line 549
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v1, v2

    .line 545
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 549
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v1, v2

    .line 543
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_2

    .line 549
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    .line 551
    :goto_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    :cond_2
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v2, v1

    :goto_6
    return-object v2

    :goto_7
    if-eqz v2, :cond_3

    .line 549
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 551
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    :cond_3
    :goto_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 555
    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private b(Lcn/nubia/camera/pretty/a/b;)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->c:Lcn/nubia/camera/g/h;

    new-instance v2, Lcn/nubia/camera/pretty/a/f$11;

    invoke-direct {v2, p0, p1}, Lcn/nubia/camera/pretty/a/f$11;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V

    new-instance v3, Lcn/nubia/camera/pretty/a/f$12;

    invoke-direct {v3, p0}, Lcn/nubia/camera/pretty/a/f$12;-><init>(Lcn/nubia/camera/pretty/a/f;)V

    new-instance v4, Lcn/nubia/camera/pretty/a/f$13;

    invoke-direct {v4, p0, p1}, Lcn/nubia/camera/pretty/a/f$13;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/pretty/a/g;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 325
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/g;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    return-object p0
.end method

.method private c(Lcn/nubia/camera/pretty/a/b;)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->c:Lcn/nubia/camera/g/h;

    new-instance v2, Lcn/nubia/camera/pretty/a/f$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/camera/pretty/a/f$2;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p1}, Lcn/nubia/camera/pretty/a/g;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/a/f;)Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/f;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private d(Lcn/nubia/camera/pretty/a/b;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcn/nubia/camera/pretty/a/e;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-direct {v0, v1}, Lcn/nubia/camera/pretty/a/e;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    .line 446
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/a/e;->a()V

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    new-instance v1, Lcn/nubia/camera/pretty/a/f$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/pretty/a/f$4;-><init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/a/e;->a(Lcn/nubia/camera/pretty/a/e$a;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/a/f;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcn/nubia/camera/pretty/a/f;->f:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/e;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/a/f;->f:Z

    if-nez v0, :cond_0

    const-string v0, "PrettyBokehShutterButtonClickListener"

    const-string v1, "Fragment is not resume"

    .line 137
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->g()Lcn/nubia/camera/pretty/a/b;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/a/f;->d(Lcn/nubia/camera/pretty/a/b;)V

    .line 144
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/b;)V

    goto :goto_1

    .line 148
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/k/a/a$b;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 150
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/b;)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/a/f;->c(Lcn/nubia/camera/pretty/a/b;)V

    :goto_1
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/pretty/a/f;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private g()Lcn/nubia/camera/pretty/a/b;
    .locals 14

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 347
    iget v2, v1, Lcn/nubia/camera/k/x$c;->a:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget v2, v1, Lcn/nubia/camera/k/x$c;->b:I

    .line 351
    iget v3, v1, Lcn/nubia/camera/k/x$c;->c:I

    .line 352
    iget v1, v1, Lcn/nubia/camera/k/x$c;->b:I

    move v10, v1

    move v8, v2

    move v9, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    move v8, v2

    move v9, v8

    move v10, v9

    .line 354
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x;->z()Ljava/lang/String;

    move-result-object v12

    .line 355
    new-instance v1, Lcn/nubia/camera/pretty/a/b;

    .line 356
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/4 v11, 0x0

    new-instance v13, Lcn/nubia/camera/pretty/a/f$3;

    invoke-direct {v13, p0}, Lcn/nubia/camera/pretty/a/f$3;-><init>(Lcn/nubia/camera/pretty/a/f;)V

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcn/nubia/camera/pretty/a/b;-><init>(IIIIIIIILjava/lang/String;Lcn/nubia/camera/pretty/a/b$a;)V

    return-object v1
.end method

.method private h()F
    .locals 1

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->b:Lcn/nubia/camera/pretty/a/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->D()F

    move-result v0

    return v0
.end method

.method static synthetic h(Lcn/nubia/camera/pretty/a/f;)F
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->h()F

    move-result p0

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/pretty/a/f;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->j()V

    return-void
.end method

.method private i()Z
    .locals 3

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    .line 463
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f028f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_refocus_after_capture_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 462
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->h:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 108
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/a/f;->f:Z

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->j()V

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/pretty/b$a;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f;->h:Lcn/nubia/camera/pretty/b$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->i:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->h:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->a()V

    .line 100
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/f;->f()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 116
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/a/f;->f:Z

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lcn/nubia/camera/pretty/a/e;->b()V

    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcn/nubia/camera/pretty/a/f;->d:Lcn/nubia/camera/pretty/a/e;

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 0

    return-void
.end method
