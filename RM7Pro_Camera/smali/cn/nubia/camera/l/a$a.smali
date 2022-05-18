.class Lcn/nubia/camera/l/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/a;

.field private b:Landroid/hardware/camera2/TotalCaptureResult;

.field private c:Lcn/nubia/b/a/f;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:J

.field private final g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/l/a;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 505
    iput-boolean p1, p0, Lcn/nubia/camera/l/a$a;->d:Z

    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lcn/nubia/camera/l/a$a;->e:Ljava/lang/String;

    .line 508
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/l/a$a;->g:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/l/a;Lcn/nubia/camera/l/a$1;)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcn/nubia/camera/l/a$a;-><init>(Lcn/nubia/camera/l/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;
    .locals 3

    .line 634
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 635
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "relative_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 636
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string v1, "image/*"

    .line 637
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-wide v1, p0, Lcn/nubia/camera/l/a$a;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "datetaken"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".dng"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_display_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private a()V
    .locals 13

    const-string v0, "DngFragment"

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dngCeate 1 !mDngDone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/l/a$a;->d:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/l/a$a;->b:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/l/a$a;->d:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->b:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v1, :cond_12

    .line 538
    iput-boolean v3, p0, Lcn/nubia/camera/l/a$a;->d:Z

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x0

    .line 549
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v2}, Lcn/nubia/camera/l/a;->g(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 550
    new-instance v2, Landroid/hardware/camera2/DngCreator;

    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->b:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v2, v1, v5}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 551
    :try_start_2
    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v5}, Lcn/nubia/camera/l/a;->h(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/al/c;->c()I

    move-result v5

    invoke-static {v1, v5}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v11

    .line 552
    invoke-static {v11}, Lcn/nubia/d/a;->d(I)S

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 553
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v1}, Lcn/nubia/camera/l/a;->h(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 555
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 557
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcn/nubia/camera/l/a$a;->f:J

    .line 558
    invoke-static {v5, v6}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/l/a$a;->e:Ljava/lang/String;

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/nubia/camera/l/a$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".dng"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DngFragment"

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileDir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    invoke-direct {p0, v1}, Lcn/nubia/camera/l/a$a;->a(Lcn/nubia/b/a/f;)V

    .line 562
    invoke-direct {p0}, Lcn/nubia/camera/l/a$a;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/l/a$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    invoke-interface {v1}, Lcn/nubia/b/a/f;->f()I

    move-result v9

    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    invoke-interface {v1}, Lcn/nubia/b/a/f;->c()I

    move-result v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcn/nubia/camera/l/a$a;->a(Ljava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;

    move-result-object v1

    const-string v5, "is_pending"

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v5}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    .line 566
    :try_start_3
    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v5}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    :try_start_4
    iget-object v6, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    invoke-interface {v6}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    move-object v12, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v5

    goto :goto_4

    :catch_0
    move-exception v6

    move-object v12, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v5

    goto :goto_5

    :catch_1
    move-exception v6

    move-object v12, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v5

    goto :goto_6

    :cond_3
    :try_start_5
    const-string v5, "DngFragment"

    const-string v6, "dng storage fail"

    .line 569
    invoke-static {v5, v6}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v0

    .line 582
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 584
    iget-object v2, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v2, :cond_4

    .line 585
    invoke-interface {v2}, Lcn/nubia/b/a/f;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 589
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 591
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    if-eqz v1, :cond_d

    .line 595
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "is_pending"

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    iget-object v4, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v4}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_c

    :catchall_1
    move-exception v5

    move-object v6, v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v5

    :goto_4
    move-object v5, v12

    goto/16 :goto_d

    :catch_3
    move-exception v5

    move-object v6, v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v5

    :goto_5
    move-object v5, v12

    goto :goto_7

    :catch_4
    move-exception v5

    move-object v6, v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v5

    :goto_6
    move-object v5, v12

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v5, v2

    move-object v2, v6

    goto/16 :goto_d

    :catch_5
    move-exception v1

    move-object v6, v0

    move-object v5, v2

    move-object v2, v6

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v6, v0

    move-object v5, v2

    move-object v2, v6

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    goto/16 :goto_d

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    .line 578
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DngFragment"

    const-string v7, "Exception eException eException e"

    .line 579
    invoke-static {v1, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v5, :cond_6

    .line 582
    invoke-virtual {v5}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 584
    :cond_6
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v1, :cond_7

    .line 585
    invoke-interface {v1}, Lcn/nubia/b/a/f;->close()V

    :cond_7
    if-eqz v6, :cond_8

    .line 589
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 591
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz v2, :cond_d

    .line 595
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_b

    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    .line 572
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_9

    .line 574
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v1}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v2, v0

    :cond_9
    if-eqz v5, :cond_a

    .line 582
    invoke-virtual {v5}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 584
    :cond_a
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v1, :cond_b

    .line 585
    invoke-interface {v1}, Lcn/nubia/b/a/f;->close()V

    :cond_b
    if-eqz v6, :cond_c

    .line 589
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 591
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_a
    if-eqz v2, :cond_d

    .line 595
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :goto_b
    const-string v5, "is_pending"

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    iget-object v4, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v4}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    :cond_d
    :goto_c
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/l/a;->c(Lcn/nubia/camera/l/a;Z)Z

    .line 600
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->d()V

    return-void

    :catchall_4
    move-exception v1

    :goto_d
    if-eqz v5, :cond_e

    .line 582
    invoke-virtual {v5}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 584
    :cond_e
    iget-object v5, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    if-eqz v5, :cond_f

    .line 585
    invoke-interface {v5}, Lcn/nubia/b/a/f;->close()V

    :cond_f
    if-eqz v6, :cond_10

    .line 589
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_e

    :catch_b
    move-exception v5

    .line 591
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_e
    if-eqz v2, :cond_11

    .line 595
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "is_pending"

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    iget-object v4, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v4}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v5, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    :cond_11
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0, v3}, Lcn/nubia/camera/l/a;->c(Lcn/nubia/camera/l/a;Z)Z

    .line 600
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->d()V

    .line 601
    throw v1

    .line 540
    :cond_12
    :try_start_c
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    .line 542
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method private a(Lcn/nubia/b/a/f;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0}, Lcn/nubia/camera/l/a;->i(Lcn/nubia/camera/l/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/nubia/camera/l/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/b/a/f$a;

    invoke-interface {p1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 613
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 614
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 615
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 624
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v1}, Lcn/nubia/camera/l/a;->h(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/a$a;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0}, Lcn/nubia/camera/l/a;->j(Lcn/nubia/camera/l/a;)Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    const-string v0, "DngFragment"

    const-string v1, "onCompleteMetadata 1"

    .line 522
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iput-object p1, p0, Lcn/nubia/camera/l/a$a;->b:Landroid/hardware/camera2/TotalCaptureResult;

    .line 524
    invoke-direct {p0}, Lcn/nubia/camera/l/a$a;->a()V

    return-void
.end method

.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    const-string p2, "DngFragment"

    const-string v0, "onPictureTaken 1"

    .line 529
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput-object p1, p0, Lcn/nubia/camera/l/a$a;->c:Lcn/nubia/b/a/f;

    .line 531
    invoke-direct {p0}, Lcn/nubia/camera/l/a$a;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 502
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/l/a$a;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
