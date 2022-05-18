.class Lcn/nubia/camera/videomaker/j$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/j;

.field private volatile b:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/j;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/j$b;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "ReadBufferThread.run!!!"

    .line 508
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->a(Ljava/lang/String;)V

    .line 510
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Lcn/nubia/camera/videomaker/j;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 511
    iget-object v2, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v2}, Lcn/nubia/camera/videomaker/j;->c(Lcn/nubia/camera/videomaker/j;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    .line 514
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/nubia/camera/av/c;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v6}, Lcn/nubia/camera/videomaker/j;->e(Lcn/nubia/camera/videomaker/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 527
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string v8, ".nomedia"

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_9

    .line 537
    :cond_1
    :goto_0
    iget-boolean v4, v1, Lcn/nubia/camera/videomaker/j$b;->b:Z

    if-eqz v4, :cond_8

    .line 538
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->f(Lcn/nubia/camera/videomaker/j;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->releaseBuffer()V

    .line 541
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0, v5}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;Z)Z

    :cond_2
    return-void

    .line 555
    :cond_3
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->g(Lcn/nubia/camera/videomaker/j;)I

    move-result v4

    iget-object v7, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v7}, Lcn/nubia/camera/videomaker/j;->h(Lcn/nubia/camera/videomaker/j;)I

    move-result v7

    if-ge v4, v7, :cond_6

    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->i(Lcn/nubia/camera/videomaker/j;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 556
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->g(Lcn/nubia/camera/videomaker/j;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Lcn/nubia/algorithm/utils/BufferManager;->getData(I)[B

    move-result-object v4

    .line 558
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    iget-object v8, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v8}, Lcn/nubia/camera/videomaker/j;->j(Lcn/nubia/camera/videomaker/j;)I

    move-result v8

    rem-int/lit16 v8, v8, 0x168

    if-eqz v8, :cond_5

    .line 562
    new-instance v8, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v8, v4}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 563
    new-instance v9, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v9, v4}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 564
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->j(Lcn/nubia/camera/videomaker/j;)I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    const/16 v10, 0x5a

    if-ne v4, v10, :cond_4

    move v10, v0

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v0

    move v10, v2

    .line 568
    :goto_1
    iget-object v11, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v11}, Lcn/nubia/camera/videomaker/j;->j(Lcn/nubia/camera/videomaker/j;)I

    move-result v11

    rem-int/lit16 v11, v11, 0x168

    rsub-int v11, v11, 0x168

    rem-int/lit16 v11, v11, 0x168

    invoke-static {v8, v9, v4, v10, v11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Lcn/nubia/algorithm/utils/a;III)V

    .line 569
    invoke-virtual {v9}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v11

    .line 570
    invoke-virtual {v8}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 571
    invoke-virtual {v9}, Lcn/nubia/algorithm/utils/a;->a()V

    move-object v13, v11

    goto :goto_2

    :cond_5
    move v10, v2

    move-object v13, v4

    move v4, v0

    .line 573
    :goto_2
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v14, 0x11

    const/16 v17, 0x0

    move-object v12, v8

    move v15, v4

    move/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 575
    new-instance v9, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v11, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x50

    invoke-virtual {v8, v9, v4, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 580
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;J)J

    .line 581
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->k(Lcn/nubia/camera/videomaker/j;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    iget-object v8, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v8, v7, v4}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;[BLjava/lang/String;)Z

    .line 587
    iget-object v7, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v7}, Lcn/nubia/camera/videomaker/j;->l(Lcn/nubia/camera/videomaker/j;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->g(Lcn/nubia/camera/videomaker/j;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;I)I

    .line 590
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->m(Lcn/nubia/camera/videomaker/j;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->n(Lcn/nubia/camera/videomaker/j;)Z

    goto/16 :goto_0

    .line 593
    :cond_6
    iget-object v4, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v4}, Lcn/nubia/camera/videomaker/j;->n(Lcn/nubia/camera/videomaker/j;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "releaseBuffer"

    .line 594
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->a(Ljava/lang/String;)V

    .line 595
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->releaseBuffer()V

    .line 596
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;Lcn/nubia/algorithm/utils/BufferManager;)Lcn/nubia/algorithm/utils/BufferManager;

    .line 597
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0, v5}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;Z)Z

    .line 598
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 601
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 602
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 603
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->p(Lcn/nubia/camera/videomaker/j;)I

    move-result v0

    iget-object v2, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v2}, Lcn/nubia/camera/videomaker/j;->q(Lcn/nubia/camera/videomaker/j;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 604
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 606
    :cond_7
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    :cond_8
    :goto_3
    return-void

    .line 528
    :cond_9
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Cannot create file .nomedia"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->a(Ljava/lang/String;)V

    .line 533
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->releaseBuffer()V

    .line 534
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0, v5}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;Z)Z

    return-void

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->a(Ljava/lang/String;)V

    .line 517
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->releaseBuffer()V

    .line 518
    iget-object v0, v1, Lcn/nubia/camera/videomaker/j$b;->a:Lcn/nubia/camera/videomaker/j;

    invoke-static {v0, v5}, Lcn/nubia/camera/videomaker/j;->a(Lcn/nubia/camera/videomaker/j;Z)Z

    return-void
.end method
