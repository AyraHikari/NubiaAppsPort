.class public Lcn/nubia/l/b/f;
.super Lcn/nubia/l/b/a;
.source "SourceFile"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;IZ)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcn/nubia/l/b/a;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcn/nubia/l/b/f;->d:Landroid/content/Context;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/l/b/f;->e:Z

    .line 28
    iput-object p2, p0, Lcn/nubia/l/b/f;->b:Landroid/net/Uri;

    .line 29
    iput p3, p0, Lcn/nubia/l/b/f;->c:I

    .line 30
    iput-object p1, p0, Lcn/nubia/l/b/f;->d:Landroid/content/Context;

    .line 31
    iput-boolean p4, p0, Lcn/nubia/l/b/f;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/l/a/a;
    .locals 6

    .line 36
    iget-object v0, p0, Lcn/nubia/l/b/f;->a:Lcn/nubia/l/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/l/b/f;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_5

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/b/f;->a:Lcn/nubia/l/a/b;

    invoke-virtual {v0}, Lcn/nubia/l/a/b;->a()I

    move-result v0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcn/nubia/l/b/f;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/l/b/f;->b:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 46
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 47
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 48
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 57
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 59
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v1

    .line 53
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 57
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 64
    :cond_2
    :goto_2
    iget-object v2, p0, Lcn/nubia/l/b/f;->b:Landroid/net/Uri;

    iget v3, p0, Lcn/nubia/l/b/f;->c:I

    iget-boolean v4, p0, Lcn/nubia/l/b/f;->e:Z

    invoke-static {v2, v1, v3, v0, v4}, Lcn/nubia/l/a/a;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZ)Lcn/nubia/l/a/a;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 57
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    :cond_3
    :goto_4
    throw v0

    :cond_4
    :goto_5
    return-object v1
.end method
