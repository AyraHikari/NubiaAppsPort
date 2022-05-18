.class public Lcn/nubia/camera/ax/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ax/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ax/f;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ax/f;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BLjava/io/File;)V
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpeg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThirdPartyFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 462
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 467
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 471
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 465
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    .line 471
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 473
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_1

    .line 471
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    .line 473
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    :cond_1
    :goto_4
    throw p1
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p2}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/f;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 429
    iget-object p2, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {p2}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcn/nubia/camera/ax/f$b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ax/f$b$1;-><init>(Lcn/nubia/camera/ax/f$b;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object p1

    .line 438
    iget-object p2, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p2}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/f;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 439
    iget-object p2, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p2, p1}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/f;[B)[B

    .line 442
    iget-object p1, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p1}, Lcn/nubia/camera/ax/f;->c(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ax/f$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ax/f$a;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 445
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {p2}, Lcn/nubia/camera/ax/f;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAMERA_AUTO_TEST"

    .line 446
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "AutoTest.jpeg"

    if-eqz p2, :cond_3

    .line 447
    new-instance p2, Ljava/io/File;

    const-string v1, "/sdcard/DCIM/Camera/"

    invoke-direct {p2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ax/f$b;->a([BLjava/io/File;)V

    goto :goto_0

    .line 449
    :cond_3
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ax/f$b;->a([BLjava/io/File;)V

    .line 452
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p1}, Lcn/nubia/camera/ax/f;->d(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ax/j;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    .line 453
    iget-object p1, p0, Lcn/nubia/camera/ax/f$b;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p1}, Lcn/nubia/camera/ax/f;->e(Lcn/nubia/camera/ax/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 420
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ax/f$b;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method
