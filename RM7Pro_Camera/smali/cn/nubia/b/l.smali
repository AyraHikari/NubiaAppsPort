.class public Lcn/nubia/b/l;
.super Lcn/nubia/b/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/b/m<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/b/l$a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/b/l$a;Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcn/nubia/b/m;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/b/l;->a:Lcn/nubia/b/l$a;

    .line 31
    iput-object p1, p0, Lcn/nubia/b/l;->a:Lcn/nubia/b/l$a;

    if-eqz p2, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/.videoTmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/l;->b:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/DCIM/Camera/.videoTmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/l;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/b/l$a;)Landroid/view/Surface;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    .line 77
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/b/l;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/b/l;->a(Ljava/io/File;)V

    .line 83
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 90
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 93
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 94
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 95
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 96
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 97
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->h()I

    move-result v3

    invoke-virtual {p1}, Lcn/nubia/b/l$a;->i()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 98
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->f()I

    move-result v3

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcn/nubia/b/l$a;->g()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 99
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->f()I

    move-result v3

    invoke-virtual {p1}, Lcn/nubia/b/l$a;->g()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 102
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->k()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 103
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/b/l$a;->l()I

    move-result p1

    int-to-double v3, p1

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 106
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    if-eqz v2, :cond_7

    .line 123
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 113
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_5
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    if-eqz v2, :cond_7

    .line 123
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_6
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    if-eqz v2, :cond_7

    .line 123
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0

    .line 119
    :goto_3
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    if-eqz v2, :cond_8

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 125
    :cond_8
    throw p1
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 133
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcn/nubia/b/l;->b(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 146
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcn/nubia/b/l;->b(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 150
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcn/nubia/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method protected a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 59
    instance-of v0, p1, Lcn/nubia/b/l;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcn/nubia/b/l;

    iget-object p1, p1, Lcn/nubia/b/l;->a:Lcn/nubia/b/l$a;

    iget-object v0, p0, Lcn/nubia/b/l;->a:Lcn/nubia/b/l$a;

    invoke-virtual {p1, v0}, Lcn/nubia/b/l$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()Landroid/view/Surface;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcn/nubia/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/l;->a:Lcn/nubia/b/l$a;

    invoke-direct {p0, v0}, Lcn/nubia/b/l;->a(Lcn/nubia/b/l$a;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcn/nubia/b/l;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcn/nubia/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcn/nubia/b/l;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcn/nubia/b/l;->b()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
