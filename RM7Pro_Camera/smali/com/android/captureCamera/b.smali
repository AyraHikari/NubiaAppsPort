.class public Lcom/android/captureCamera/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/captureCamera/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/captureCamera/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/android/captureCamera/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/captureCamera/e;)V
    .locals 1

    const-string v0, "CaptureCameraImageSaver"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/captureCamera/b;->c:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/android/captureCamera/b;->d:Lcom/android/captureCamera/e;

    .line 37
    iput-object p1, p0, Lcom/android/captureCamera/b;->c:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/captureCamera/b;->d:Lcom/android/captureCamera/e;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->start()V

    return-void
.end method

.method private a(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIIILjava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)Landroid/net/Uri;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "I[BIII",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    move-object/from16 v14, p1

    move-object/from16 v0, p13

    const-string v15, "Exception:IOException2"

    const-string v13, "ImageSaver"

    const-string v1, ".jpg"

    if-nez p11, :cond_0

    const-string v2, "DCIM/Camera"

    :goto_0
    move-object/from16 v16, v1

    move-object v12, v2

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_2

    const-string v2, "jpeg"

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ".raw"

    .line 160
    :cond_2
    :goto_1
    invoke-static/range {p11 .. p11}, Lcom/android/captureCamera/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p13

    move-object/from16 p10, v15

    move-object v15, v13

    move-object/from16 v13, v16

    .line 164
    invoke-direct/range {v1 .. v13}, Lcom/android/captureCamera/b;->a(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 170
    :try_start_0
    invoke-virtual {v14, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p7

    .line 171
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    .line 183
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 186
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v5, p10

    .line 187
    :goto_3
    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    move v0, v3

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v5, p10

    :goto_5
    move-object/from16 v2, p0

    move-object v1, v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v5, p10

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v5, p10

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v5, p10

    move-object v1, v0

    move-object v4, v2

    move-object/from16 v2, p0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v5, p10

    move-object v4, v2

    .line 177
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "Exception:IOException1"

    .line 178
    invoke-static {v15, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    .line 183
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v5, p10

    move-object v4, v2

    .line 173
    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v6, "Exception:FileNotFoundException"

    .line 174
    invoke-static {v15, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_3

    .line 183
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 186
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_8
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {v14, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v1, v2

    :cond_5
    move-object/from16 v2, p0

    goto :goto_b

    :cond_6
    move-object/from16 v2, p0

    .line 198
    invoke-direct {v2, v1, v14}, Lcom/android/captureCamera/b;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_5

    :goto_9
    if-eqz v4, :cond_7

    .line 183
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 186
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_7
    :goto_a
    throw v1

    :goto_b
    return-object v1
.end method

.method private a(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 206
    new-instance p10, Landroid/content/ContentValues;

    const/16 v0, 0xb

    invoke-direct {p10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "relative_path"

    .line 208
    invoke-virtual {p10, p2, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 209
    invoke-virtual {p10, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_display_name"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    .line 211
    invoke-virtual {p10, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "orientation"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    array-length p2, p7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "is_pending"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p5, :cond_0

    .line 220
    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 221
    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "longitude"

    invoke-virtual {p10, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 224
    :cond_0
    invoke-static {p1, p10}, Lcom/android/captureCamera/b;->a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 236
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write MediaStore"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageSaver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private b([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V
    .locals 14

    if-nez p1, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "image data null"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/captureCamera/b;->c()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p9

    move-object v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Lcom/android/captureCamera/b;->a(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/location/Location;I[BIIILjava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method private c()Landroid/content/ContentResolver;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/captureCamera/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 105
    monitor-enter p0

    .line 106
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/android/captureCamera/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/captureCamera/b$a;-><init>(Lcom/android/captureCamera/b$1;)V

    .line 48
    iput-object p1, v0, Lcom/android/captureCamera/b$a;->a:[B

    .line 49
    iput-wide p2, v0, Lcom/android/captureCamera/b$a;->j:J

    .line 50
    iput-object p4, v0, Lcom/android/captureCamera/b$a;->b:Ljava/lang/String;

    if-nez p5, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object v1, v0, Lcom/android/captureCamera/b$a;->c:Landroid/location/Location;

    .line 52
    iput p6, v0, Lcom/android/captureCamera/b$a;->d:I

    .line 53
    iput p7, v0, Lcom/android/captureCamera/b$a;->e:I

    .line 54
    iput p8, v0, Lcom/android/captureCamera/b$a;->f:I

    .line 55
    iput p9, v0, Lcom/android/captureCamera/b$a;->g:I

    .line 56
    iput p10, v0, Lcom/android/captureCamera/b$a;->h:I

    .line 57
    iput-object p11, v0, Lcom/android/captureCamera/b$a;->i:Ljava/lang/String;

    .line 58
    monitor-enter p0

    .line 59
    :catch_0
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->a()V

    const-string v0, "ImageSaver"

    const-string v1, "finish saving images, exit saving thread.."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-enter p0

    const/4 v0, 0x1

    .line 123
    :try_start_0
    iput-boolean v0, p0, Lcom/android/captureCamera/b;->b:Z

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/android/captureCamera/b;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .line 76
    :goto_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    iget-boolean v0, p0, Lcom/android/captureCamera/b;->b:Z

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/captureCamera/b$a;

    .line 93
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    iget-object v3, v0, Lcom/android/captureCamera/b$a;->a:[B

    iget-wide v4, v0, Lcom/android/captureCamera/b$a;->j:J

    iget-object v6, v0, Lcom/android/captureCamera/b$a;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/captureCamera/b$a;->c:Landroid/location/Location;

    iget v8, v0, Lcom/android/captureCamera/b$a;->d:I

    iget v9, v0, Lcom/android/captureCamera/b$a;->e:I

    iget v10, v0, Lcom/android/captureCamera/b$a;->f:I

    iget v11, v0, Lcom/android/captureCamera/b$a;->g:I

    iget v12, v0, Lcom/android/captureCamera/b$a;->h:I

    iget-object v13, v0, Lcom/android/captureCamera/b$a;->i:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/captureCamera/b;->b([BJLjava/lang/String;Landroid/location/Location;IIIIILjava/lang/String;)V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_3
    iget-object v0, p0, Lcom/android/captureCamera/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 93
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
