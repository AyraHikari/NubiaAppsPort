.class public Lcn/nubia/camera/y/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/y/h$d;,
        Lcn/nubia/camera/y/h$b;,
        Lcn/nubia/camera/y/h$c;,
        Lcn/nubia/camera/y/h$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/a/a;

.field private b:Lcn/nubia/camera/y/a;

.field private c:Ljava/lang/String;

.field private d:Lcn/nubia/camera/y/h$c;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lcn/nubia/camera/y/h$a;

.field private l:Lcn/nubia/camera/ad/a;

.field private m:Ljava/lang/Object;

.field private n:Z

.field private o:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/a/a;Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcn/nubia/camera/y/h$c;

    invoke-direct {v0, p0}, Lcn/nubia/camera/y/h$c;-><init>(Lcn/nubia/camera/y/h;)V

    iput-object v0, p0, Lcn/nubia/camera/y/h;->d:Lcn/nubia/camera/y/h$c;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/camera/y/h;->h:Z

    .line 49
    iput v0, p0, Lcn/nubia/camera/y/h;->i:I

    .line 50
    iput v0, p0, Lcn/nubia/camera/y/h;->j:I

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    .line 54
    iput-boolean v0, p0, Lcn/nubia/camera/y/h;->n:Z

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd kk:mm:ss.000000Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/camera/y/h;->o:Ljava/text/DateFormat;

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/y/h;->a:Lcn/nubia/camera/a/a;

    .line 59
    iput-object p2, p0, Lcn/nubia/camera/y/h;->l:Lcn/nubia/camera/ad/a;

    .line 60
    new-instance p1, Lcn/nubia/camera/y/a;

    iget-object p2, p0, Lcn/nubia/camera/y/h;->d:Lcn/nubia/camera/y/h$c;

    invoke-direct {p1, p2}, Lcn/nubia/camera/y/a;-><init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;)V

    iput-object p1, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    .line 61
    iget-object p1, p0, Lcn/nubia/camera/y/h;->o:Ljava/text/DateFormat;

    const-string p2, "UTC"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/h;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/y/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/y/h;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/y/h;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/h;[B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/h;->a([B)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/y/h;->b(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/y/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a([B)V
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderYUV  previewData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/y/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/y/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDataRender"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    iget v1, p0, Lcn/nubia/camera/y/h;->f:I

    iget v2, p0, Lcn/nubia/camera/y/h;->g:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/camera/y/a;->a([BII)V

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 8

    .line 131
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 134
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/y/h;->k:Lcn/nubia/camera/y/h$a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/y/h;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/y/h;)I
    .locals 2

    .line 30
    iget v0, p0, Lcn/nubia/camera/y/h;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/camera/y/h;->i:I

    return v0
.end method

.method private d()V
    .locals 2

    .line 115
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/h;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/h;->l:Lcn/nubia/camera/ad/a;

    .line 116
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    .line 114
    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/y/a;->a(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcn/nubia/camera/y/a;->b()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/y/h;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/y/h;->c:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcn/nubia/camera/y/h;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcn/nubia/camera/y/h;->l:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v3

    const-string v4, "pref_picture_artist_info"

    invoke-virtual {v3, v4}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    invoke-virtual {v3}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 75
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    iget-object v5, p0, Lcn/nubia/camera/y/h;->c:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/y/h;->o:Ljava/text/DateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v3}, Lcn/nubia/camera/y/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 77
    :try_start_0
    iput-boolean v2, p0, Lcn/nubia/camera/y/h;->n:Z

    const/4 v2, 0x0

    .line 78
    iput v2, p0, Lcn/nubia/camera/y/h;->j:I

    .line 79
    iput-boolean v2, p0, Lcn/nubia/camera/y/h;->h:Z

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "PreviewDataRender"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcn/nubia/camera/y/h$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/camera/y/h;->k:Lcn/nubia/camera/y/h$a;

    return-void
.end method

.method public a([BII)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/y/h;->n:Z

    if-nez v1, :cond_0

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/y/h;->h:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/y/h;->d()V

    .line 91
    iput-boolean v2, p0, Lcn/nubia/camera/y/h;->h:Z

    .line 93
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    iput p2, p0, Lcn/nubia/camera/y/h;->f:I

    .line 95
    iput p3, p0, Lcn/nubia/camera/y/h;->g:I

    .line 96
    iget-object p2, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    if-nez p2, :cond_3

    .line 97
    iget p2, p0, Lcn/nubia/camera/y/h;->i:I

    const/16 p3, 0xa

    if-gt p2, p3, :cond_2

    .line 98
    iget-object p2, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    monitor-enter p2

    .line 99
    :try_start_1
    iget p3, p0, Lcn/nubia/camera/y/h;->i:I

    add-int/2addr p3, v2

    iput p3, p0, Lcn/nubia/camera/y/h;->i:I

    .line 100
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object p2, p0, Lcn/nubia/camera/y/h;->e:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcn/nubia/camera/y/h$d;

    invoke-direct {p3, p0, p0, p1}, Lcn/nubia/camera/y/h$d;-><init>(Lcn/nubia/camera/y/h;Lcn/nubia/camera/y/h;[B)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 103
    :cond_2
    iget p1, p0, Lcn/nubia/camera/y/h;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/camera/y/h;->j:I

    const-string p1, "PreviewDataRender"

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Drop PreviewData:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcn/nubia/camera/y/h;->j:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 93
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/y/h;->b:Lcn/nubia/camera/y/a;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcn/nubia/camera/y/a;->a()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/h;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/y/h;->n:Z

    .line 145
    iput-boolean v1, p0, Lcn/nubia/camera/y/h;->h:Z

    .line 146
    iput v1, p0, Lcn/nubia/camera/y/h;->j:I

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcn/nubia/camera/y/h;->f()V

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/y/h;->e()V

    return-void
.end method
