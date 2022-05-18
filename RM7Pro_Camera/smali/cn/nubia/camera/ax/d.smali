.class public Lcn/nubia/camera/ax/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcn/nubia/k/a/a;

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcn/nubia/camera/ax/d;->d:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcn/nubia/camera/ax/d;->e:Lcn/nubia/k/a/a;

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/ax/d;->f:Landroid/net/Uri;

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/ax/d;->a()V

    return-void
.end method

.method private a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 86
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write MediaStore"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThirdPartyDataManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 95
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/ax/d;->f:Landroid/net/Uri;

    return-object p1
.end method

.method private a(Landroid/content/ContentResolver;[BLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 100
    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/ax/d;->a([BLjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    invoke-direct {p0, p1, p4}, Lcn/nubia/camera/ax/d;->a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->f:Landroid/net/Uri;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "output"

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcn/nubia/camera/ax/d;->b:Landroid/net/Uri;

    const-string v1, "crop"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ax/d;->c:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "save_jpeg_sd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ax/d;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private a([BLjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    const-string p2, "ThirdPartyDataManager"

    const-string v1, "Failed to write image"

    .line 72
    invoke-static {p2, v1, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    .line 76
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return p1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 79
    :catch_4
    throw p1
.end method

.method private b([BLandroid/util/Size;)V
    .locals 10

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ax/d;->e:Lcn/nubia/k/a/a;

    .line 109
    iget-boolean v0, p0, Lcn/nubia/camera/ax/d;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v2

    .line 112
    iget-object v3, p0, Lcn/nubia/camera/ax/d;->e:Lcn/nubia/k/a/a;

    iget-object v4, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 115
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 117
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 118
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "width"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v8, "height"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "datetaken"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-static {v3}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "relative_path"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 122
    invoke-virtual {v7, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_display_name"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v1, "image/jpeg"

    .line 124
    invoke-virtual {v7, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "orientation"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_size"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMMSJpeg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThirdPartyDataManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, v7}, Lcn/nubia/camera/ax/d;->a(Landroid/content/ContentResolver;[BLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a([BLandroid/util/Size;)V
    .locals 6

    const-string v0, "crop-temp"

    .line 149
    iget-object v1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/ax/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ThirdPartyDataManager"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->b:Landroid/net/Uri;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach data to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/ax/d;->b:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/ax/d;->b:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 164
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 166
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ax/d;->b([BLandroid/util/Size;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 173
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_0
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    .line 177
    invoke-direct {p0, v1}, Lcn/nubia/camera/ax/d;->a(I)V

    .line 178
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 170
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attach data fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    .line 177
    invoke-direct {p0, v4}, Lcn/nubia/camera/ax/d;->a(I)V

    goto :goto_1

    .line 176
    :goto_2
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    .line 177
    invoke-direct {p0, v4}, Lcn/nubia/camera/ax/d;->a(I)V

    .line 178
    iget-object p2, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 179
    throw p1

    :cond_2
    const-string p2, "attach data to extra of intent"

    .line 181
    invoke-static {v3, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result p2

    const v0, 0xc800

    .line 183
    invoke-static {p1, v0}, Lcn/nubia/camera/b;->a([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 184
    invoke-static {p1, p2}, Lcn/nubia/camera/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 185
    new-instance p2, Landroid/content/Intent;

    const-string v0, "inline-data"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcn/nubia/camera/ax/d;->a(ILandroid/content/Intent;)V

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 194
    :cond_3
    :try_start_3
    iget-object p2, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 196
    iget-object v1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 197
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    .line 212
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->c:Ljava/lang/String;

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "circleCrop"

    const-string v1, "true"

    .line 214
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ax/d;->b:Landroid/net/Uri;

    if-eqz v0, :cond_5

    const-string v1, "output"

    .line 217
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    const-string v1, "return-data"

    .line 219
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "send the date to the crop app"

    .line 227
    invoke-static {v3, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 205
    :catch_2
    :try_start_4
    invoke-direct {p0, v4}, Lcn/nubia/camera/ax/d;->a(I)V

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    return-void

    .line 201
    :catch_3
    :try_start_5
    invoke-direct {p0, v4}, Lcn/nubia/camera/ax/d;->a(I)V

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/ax/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 209
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    return-void

    :goto_5
    invoke-static {v2}, Lcn/nubia/camera/ba/a;->a(Ljava/io/Closeable;)V

    .line 210
    throw p1
.end method
