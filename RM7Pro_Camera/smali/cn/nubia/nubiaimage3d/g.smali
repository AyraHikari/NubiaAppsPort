.class public Lcn/nubia/nubiaimage3d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/nubiaimage3d/d$b;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcn/nubia/nubiaimage3d/d;

.field private d:Ljava/lang/String;

.field private e:Lcn/nubia/nubiaimage3d/f;

.field private f:Lcn/nubia/nubiaimage3d/i;

.field private g:Lcn/nubia/nubiaimage3d/e;

.field private h:Ljava/io/ByteArrayOutputStream;

.field private i:Ljava/io/DataOutputStream;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->b:Z

    .line 35
    new-instance v1, Lcn/nubia/nubiaimage3d/d;

    invoke-direct {v1}, Lcn/nubia/nubiaimage3d/d;-><init>()V

    iput-object v1, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcn/nubia/nubiaimage3d/g;->e:Lcn/nubia/nubiaimage3d/f;

    .line 39
    new-instance v1, Lcn/nubia/nubiaimage3d/i;

    invoke-direct {v1}, Lcn/nubia/nubiaimage3d/i;-><init>()V

    iput-object v1, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    .line 40
    new-instance v1, Lcn/nubia/nubiaimage3d/e;

    invoke-direct {v1}, Lcn/nubia/nubiaimage3d/e;-><init>()V

    iput-object v1, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcn/nubia/nubiaimage3d/g;->j:Z

    .line 47
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcn/nubia/nubiaimage3d/i;->a(II)V

    .line 48
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/16 v4, 0x2712

    invoke-virtual {v2, v1, v4}, Lcn/nubia/nubiaimage3d/i;->a(II)V

    .line 49
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    invoke-virtual {v1, v3, v0}, Lcn/nubia/nubiaimage3d/i;->a(II)V

    .line 50
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcn/nubia/nubiaimage3d/i;->a(II)V

    .line 51
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Lcn/nubia/nubiaimage3d/i;->a(II)V

    .line 52
    iput v0, p0, Lcn/nubia/nubiaimage3d/g;->a:I

    return-void
.end method

.method private a([BII)[B
    .locals 6

    .line 175
    array-length v0, p1

    new-array v0, v0, [B

    mul-int/2addr p2, p3

    const/4 p3, 0x0

    .line 177
    invoke-static {p1, p3, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    div-int/lit8 v1, p2, 0x4

    add-int v2, p2, v1

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_0

    add-int v4, p3, p2

    add-int v5, v3, v1

    .line 183
    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 184
    aget-byte v5, p1, v3

    aput-byte v5, v0, v4

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->b:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/d;->a()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->b:Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v0, v0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iput p1, v0, Lcn/nubia/nubiaimage3d/e$a;->c:I

    return-void
.end method

.method public a(Landroid/media/MediaCodec$BufferInfo;[BI)V
    .locals 8

    .line 192
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->j:Z

    .line 194
    new-instance v7, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v1, v1, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/e$a;->f:I

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->g:I

    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/nubiaimage3d/g;->a([BII)[B

    move-result-object v2

    const/16 v3, 0x11

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v1, v1, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v4, v1, Lcn/nubia/nubiaimage3d/e$a;->f:I

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v1, v1, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v5, v1, Lcn/nubia/nubiaimage3d/e$a;->g:I

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->f:I

    iget-object v3, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v3, v3, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v3, v3, Lcn/nubia/nubiaimage3d/e$a;->g:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x64

    .line 196
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    invoke-virtual {v7, v1, v0, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/nubiaimage3d/d;->a(Landroid/media/MediaCodec$BufferInfo;[BI)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v0, v0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iput p2, v0, Lcn/nubia/nubiaimage3d/e$a;->f:I

    .line 58
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v0, v0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iput p3, v0, Lcn/nubia/nubiaimage3d/e$a;->g:I

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    .line 60
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_h264_temp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    .line 62
    new-instance p1, Lcn/nubia/nubiaimage3d/f;

    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcn/nubia/nubiaimage3d/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/g;->e:Lcn/nubia/nubiaimage3d/f;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 66
    :goto_0
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/nubiaimage3d/d;->a(II)V

    .line 67
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {p1, p0}, Lcn/nubia/nubiaimage3d/d;->a(Lcn/nubia/nubiaimage3d/d$b;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 223
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/nubiaimage3d/g;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->b:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {v0}, Lcn/nubia/nubiaimage3d/d;->b()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/g;->b:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v0, v0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iput p1, v0, Lcn/nubia/nubiaimage3d/e$a;->e:I

    return-void
.end method

.method public declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->e:Lcn/nubia/nubiaimage3d/f;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/nubiaimage3d/f;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 215
    iget p1, p0, Lcn/nubia/nubiaimage3d/g;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/nubiaimage3d/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v0, v0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iput p1, v0, Lcn/nubia/nubiaimage3d/e$a;->d:I

    return-void
.end method

.method public c()[B
    .locals 3

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->c:Lcn/nubia/nubiaimage3d/d;

    invoke-virtual {v1}, Lcn/nubia/nubiaimage3d/d;->c()V

    .line 92
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v1, v1, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->e:Lcn/nubia/nubiaimage3d/f;

    invoke-virtual {v2}, Lcn/nubia/nubiaimage3d/f;->a()I

    move-result v2

    iput v2, v1, Lcn/nubia/nubiaimage3d/e$a;->b:I

    .line 93
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcn/nubia/nubiaimage3d/g;->d()V

    .line 95
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    .line 105
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_3
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    return-object v0

    .line 108
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_5

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_5
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    :cond_6
    :goto_6
    throw v0
.end method

.method public d()V
    .locals 7

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 133
    :cond_0
    new-array v2, v1, [B

    .line 134
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 136
    iget-object v3, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 138
    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    int-to-long v5, v1

    iput-wide v5, v2, Lcn/nubia/nubiaimage3d/e$a;->a:J

    const-string v1, "aizhao"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v3, v3, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget-wide v5, v3, Lcn/nubia/nubiaimage3d/e$a;->a:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget-wide v2, v2, Lcn/nubia/nubiaimage3d/e$a;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 141
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->c:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->d:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->e:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->f:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->g:Lcn/nubia/nubiaimage3d/e;

    iget-object v2, v2, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/e$a;->g:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    invoke-virtual {v2, v4}, Lcn/nubia/nubiaimage3d/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 150
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/nubiaimage3d/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcn/nubia/nubiaimage3d/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcn/nubia/nubiaimage3d/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 153
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcn/nubia/nubiaimage3d/g;->f:Lcn/nubia/nubiaimage3d/i;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcn/nubia/nubiaimage3d/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 154
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/g;->i:Ljava/io/DataOutputStream;

    const-string v2, "NUBIA"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 157
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/g;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/nubiaimage3d/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
