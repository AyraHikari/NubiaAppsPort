.class public Lcn/nubia/camera/ao/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Lcn/nubia/camera/ao/m;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/g/h;

.field private e:Lcn/nubia/camera/g/e;

.field private f:Lcn/nubia/camera/z/b;

.field private g:Landroid/hardware/camera2/TotalCaptureResult;

.field private h:Lcn/nubia/camera/aj/i;

.field private i:Lcn/nubia/b/a/f;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/g/h;Lcn/nubia/camera/g/e;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/z/b;Lcn/nubia/camera/aj/i;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DumpNubiaDngRaw"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->a:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcn/nubia/camera/ao/e;->j:Z

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->k:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->l:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->n:Landroid/os/Handler;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/e;->o:Ljava/lang/Object;

    .line 162
    iput-boolean v1, p0, Lcn/nubia/camera/ao/e;->p:Z

    .line 163
    iput-boolean v1, p0, Lcn/nubia/camera/ao/e;->q:Z

    .line 164
    iput-boolean v1, p0, Lcn/nubia/camera/ao/e;->r:Z

    .line 62
    iput-object p4, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/ao/e;->b:Lcn/nubia/camera/ao/m;

    .line 64
    iput-object p2, p0, Lcn/nubia/camera/ao/e;->d:Lcn/nubia/camera/g/h;

    .line 65
    iput-object p3, p0, Lcn/nubia/camera/ao/e;->e:Lcn/nubia/camera/g/e;

    .line 66
    iput-object p5, p0, Lcn/nubia/camera/ao/e;->f:Lcn/nubia/camera/z/b;

    .line 67
    iput-object p6, p0, Lcn/nubia/camera/ao/e;->h:Lcn/nubia/camera/aj/i;

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ao/e;->n:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;
    .locals 2

    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "relative_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string v1, "image/*"

    .line 275
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
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

    .line 277
    iget-wide p1, p0, Lcn/nubia/camera/ao/e;->m:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ao/e;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/ao/e;->g:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/ao/e;Lcn/nubia/b/a/f;)Lcn/nubia/b/a/f;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/ao/e;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ao/e;->o:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lcn/nubia/b/a/f;)V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lcn/nubia/camera/ao/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/ao/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/b/a/f$a;

    invoke-interface {p1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 294
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/e;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/ao/e;->q:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ao/e;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/ao/e;->f()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ao/e;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/ao/e;->r:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/aj/i;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ao/e;->h:Lcn/nubia/camera/aj/i;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private f()V
    .locals 13

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DngTake"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/e;->g:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v3, :cond_0

    const-string v3, "capture result, "

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    if-eqz v3, :cond_1

    const-string v3, "raw image"

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->g:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    if-eqz v2, :cond_7

    const/4 v3, 0x0

    .line 173
    iput-object v3, p0, Lcn/nubia/camera/ao/e;->g:Landroid/hardware/camera2/TotalCaptureResult;

    .line 174
    iput-object v3, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x0

    .line 185
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 186
    new-instance v5, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v5, v4, v1}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 187
    :try_start_2
    invoke-direct {p0, v2}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/b/a/f;)V

    .line 188
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    invoke-static {v4, v1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v11

    .line 189
    invoke-static {v11}, Lcn/nubia/d/a;->d(I)S

    move-result v1

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v5, v1}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    .line 195
    :cond_2
    iget-object v7, p0, Lcn/nubia/camera/ao/e;->k:Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/camera/ao/e;->l:Ljava/lang/String;

    invoke-interface {v2}, Lcn/nubia/b/a/f;->f()I

    move-result v9

    invoke-interface {v2}, Lcn/nubia/b/a/f;->c()I

    move-result v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcn/nubia/camera/ao/e;->a(Ljava/lang/String;Ljava/lang/String;III)Landroid/content/ContentValues;

    move-result-object v1

    const-string v4, "is_pending"

    const/4 v6, 0x1

    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object v4, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    .line 199
    :try_start_3
    iget-object v4, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    :try_start_4
    invoke-interface {v2}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    move-object v12, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_a

    :catch_0
    move-exception v6

    move-object v12, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_4

    :catch_1
    move-exception v6

    move-object v12, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_6

    :cond_3
    :try_start_5
    const-string v4, "DngTake"

    const-string v6, "dng storage fail"

    .line 202
    invoke-static {v4, v6}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v3

    .line 215
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 216
    invoke-interface {v2}, Lcn/nubia/b/a/f;->close()V

    .line 217
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    const-string v2, "DngRunnable"

    const-string v4, "dngCreator.close();dngCreator.close();"

    .line 220
    invoke-static {v2, v4}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v1, :cond_5

    .line 223
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_pending"

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_9

    :catchall_1
    move-exception v4

    move-object v6, v5

    move-object v5, v3

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto/16 :goto_a

    :catch_3
    move-exception v4

    move-object v6, v5

    move-object v5, v3

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v6, v5

    move-object v5, v3

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v3

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_a

    :catch_5
    move-exception v1

    move-object v4, v3

    move-object v6, v5

    move-object v5, v4

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v4, v3

    move-object v6, v5

    move-object v5, v4

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    goto/16 :goto_a

    :catch_7
    move-exception v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 211
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DngTake"

    const-string v7, "Exception eException eException e"

    .line 212
    invoke-static {v1, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 215
    :try_start_8
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 216
    invoke-interface {v2}, Lcn/nubia/b/a/f;->close()V

    .line 217
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    const-string v1, "DngRunnable"

    const-string v2, "dngCreator.close();dngCreator.close();"

    .line 220
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v4, :cond_5

    .line 223
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 205
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v4, :cond_4

    .line 207
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v4, v3

    .line 215
    :cond_4
    :try_start_a
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 216
    invoke-interface {v2}, Lcn/nubia/b/a/f;->close()V

    .line 217
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_7

    :catch_a
    const-string v1, "DngRunnable"

    const-string v2, "dngCreator.close();dngCreator.close();"

    .line 220
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v4, :cond_5

    .line 223
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :goto_8
    const-string v2, "is_pending"

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    :cond_5
    :goto_9
    invoke-virtual {p0}, Lcn/nubia/camera/ao/e;->e()V

    return-void

    :catchall_4
    move-exception v1

    .line 215
    :goto_a
    :try_start_b
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 216
    invoke-interface {v2}, Lcn/nubia/b/a/f;->close()V

    .line 217
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    const-string v2, "DngRunnable"

    const-string v5, "dngCreator.close();dngCreator.close();"

    .line 220
    invoke-static {v2, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    if-eqz v4, :cond_6

    .line 223
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "is_pending"

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/ao/e;->e()V

    .line 228
    throw v1

    .line 176
    :cond_7
    :try_start_c
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    .line 178
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 261
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/e;->f:Lcn/nubia/camera/z/b;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    .line 267
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->j:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/ao/e;->h:Lcn/nubia/camera/aj/i;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->j:Z

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 86
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ao/e;->p:Z

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/ao/e;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 7

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->g:Landroid/hardware/camera2/TotalCaptureResult;

    .line 93
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Lcn/nubia/b/a/f;->close()V

    .line 96
    :cond_0
    iput-object v0, p0, Lcn/nubia/camera/ao/e;->i:Lcn/nubia/b/a/f;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->p:Z

    .line 98
    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->q:Z

    .line 99
    iput-boolean v0, p0, Lcn/nubia/camera/ao/e;->r:Z

    .line 100
    new-instance v5, Lcn/nubia/camera/ao/e$1;

    invoke-direct {v5, p0}, Lcn/nubia/camera/ao/e$1;-><init>(Lcn/nubia/camera/ao/e;)V

    .line 119
    new-instance v4, Lcn/nubia/camera/ao/e$2;

    invoke-direct {v4, p0}, Lcn/nubia/camera/ao/e$2;-><init>(Lcn/nubia/camera/ao/e;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/ao/e;->m:J

    .line 130
    invoke-direct {p0}, Lcn/nubia/camera/ao/e;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/e;->k:Ljava/lang/String;

    .line 131
    iget-wide v1, p0, Lcn/nubia/camera/ao/e;->m:J

    invoke-static {v1, v2}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ao/e;->l:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->b:Lcn/nubia/camera/ao/m;

    iget-object v2, p0, Lcn/nubia/camera/ao/e;->d:Lcn/nubia/camera/g/h;

    iget-object v3, p0, Lcn/nubia/camera/ao/e;->e:Lcn/nubia/camera/g/e;

    invoke-virtual {v3}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v3

    new-instance v6, Lcn/nubia/camera/ao/e$3;

    invoke-direct {v6, p0}, Lcn/nubia/camera/ao/e$3;-><init>(Lcn/nubia/camera/ao/e;)V

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 143
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v1, v2, :cond_3

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/a/a;->a(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->b:Lcn/nubia/camera/ao/m;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    .line 149
    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    div-long v4, v2, v4

    long-to-int v0, v4

    if-lt v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->h:Lcn/nubia/camera/aj/i;

    if-eqz v0, :cond_3

    .line 156
    invoke-interface {v0, v2, v3}, Lcn/nubia/camera/aj/i;->a(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mJpegReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mRawReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mTakeCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DngTake"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcn/nubia/camera/ao/e;->j:Z

    if-eqz v0, :cond_1

    .line 234
    iget-boolean v0, p0, Lcn/nubia/camera/ao/e;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/e;->r:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->n:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/ao/e$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/e$4;-><init>(Lcn/nubia/camera/ao/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 243
    iget-boolean v0, p0, Lcn/nubia/camera/ao/e;->q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/ao/e;->r:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/ao/e;->n:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/camera/ao/e$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ao/e$5;-><init>(Lcn/nubia/camera/ao/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
