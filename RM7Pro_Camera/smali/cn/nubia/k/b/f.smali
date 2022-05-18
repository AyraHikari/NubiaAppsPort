.class public Lcn/nubia/k/b/f;
.super Lcn/nubia/k/b/a;
.source "SourceFile"


# instance fields
.field private c:[B

.field private d:Landroid/media/Image;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/ContentValues;

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/content/ContentResolver;

.field private l:Lcn/nubia/l/a/b;

.field private m:Lcn/nubia/k/a/a;

.field private n:Lcn/nubia/k/b/e;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Landroid/graphics/Bitmap;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/k/b/e;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Landroid/graphics/Bitmap;",
            "Lcn/nubia/k/a/a;",
            "[B",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I",
            "Lcn/nubia/k/b/d;",
            "Lcn/nubia/k/b/e;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    .line 61
    invoke-direct/range {v0 .. v10}, Lcn/nubia/k/b/f;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V

    move-object v0, p3

    .line 71
    iput-object v0, v11, Lcn/nubia/k/b/f;->j:Landroid/graphics/Bitmap;

    move-object/from16 v0, p12

    .line 72
    iput-object v0, v11, Lcn/nubia/k/b/f;->n:Lcn/nubia/k/b/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Lcn/nubia/k/a/a;",
            "[B",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I",
            "Lcn/nubia/k/b/d;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcn/nubia/k/b/a;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/nubia/k/b/f;->c:[B

    .line 33
    iput-object v0, p0, Lcn/nubia/k/b/f;->d:Landroid/media/Image;

    .line 34
    iput-object v0, p0, Lcn/nubia/k/b/f;->e:Landroid/util/SparseArray;

    .line 35
    iput-object v0, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcn/nubia/k/b/f;->g:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcn/nubia/k/b/f;->i:I

    .line 41
    iput-object v0, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    .line 42
    iput-object v0, p0, Lcn/nubia/k/b/f;->l:Lcn/nubia/l/a/b;

    .line 43
    iput-object v0, p0, Lcn/nubia/k/b/f;->m:Lcn/nubia/k/a/a;

    .line 45
    iput-object v0, p0, Lcn/nubia/k/b/f;->n:Lcn/nubia/k/b/e;

    .line 46
    iput-boolean v1, p0, Lcn/nubia/k/b/f;->o:Z

    .line 86
    iput-object p1, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    .line 87
    iput-object p2, p0, Lcn/nubia/k/b/f;->l:Lcn/nubia/l/a/b;

    .line 88
    iput-object p3, p0, Lcn/nubia/k/b/f;->m:Lcn/nubia/k/a/a;

    .line 89
    iput-object p4, p0, Lcn/nubia/k/b/f;->c:[B

    .line 90
    iput-object p5, p0, Lcn/nubia/k/b/f;->e:Landroid/util/SparseArray;

    .line 91
    iput-object p6, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcn/nubia/k/b/f;->g:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    .line 94
    iput p9, p0, Lcn/nubia/k/b/f;->i:I

    .line 95
    iget-object p1, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iput-object p10, p1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 11

    .line 124
    iget-object v0, p0, Lcn/nubia/k/b/f;->n:Lcn/nubia/k/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcn/nubia/k/b/e;->c()Lcn/nubia/k/a/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcn/nubia/k/b/f;->c:[B

    const-string v3, "JpegStorageRequest"

    if-eqz v2, :cond_1

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcn/nubia/k/b/f;->d:Landroid/media/Image;

    if-nez v2, :cond_2

    const-string v0, "Jpeg can not be null"

    .line 128
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 130
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 131
    :cond_2
    iget-object v2, p0, Lcn/nubia/k/b/f;->d:Landroid/media/Image;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcn/nubia/k/b/f;->c:[B

    .line 134
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 136
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    .line 138
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const-string v2, "mkdirs"

    .line 139
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    :goto_1
    iget-object v2, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v0, "Path can not be null"

    .line 144
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 146
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 149
    :cond_6
    iget-boolean v2, p0, Lcn/nubia/k/b/f;->a:Z

    if-eqz v2, :cond_a

    .line 151
    iget-object v2, p0, Lcn/nubia/k/b/f;->m:Lcn/nubia/k/a/a;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_7

    .line 152
    invoke-virtual {v2}, Lcn/nubia/k/a/a;->f()J

    move-result-wide v7

    goto :goto_2

    :cond_7
    move-wide v7, v5

    .line 154
    :goto_2
    iget-object v2, p0, Lcn/nubia/k/b/f;->m:Lcn/nubia/k/a/a;

    if-eqz v2, :cond_9

    cmp-long v5, v7, v5

    if-gez v5, :cond_8

    goto :goto_3

    .line 159
    :cond_8
    invoke-virtual {v2}, Lcn/nubia/k/a/a;->g()J

    move-result-wide v5

    cmp-long v2, v7, v5

    if-gtz v2, :cond_a

    const-string v0, "storage is not enough"

    .line 160
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 162
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 155
    :cond_9
    :goto_3
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 157
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 166
    :cond_a
    iget-object v2, p0, Lcn/nubia/k/b/f;->e:Landroid/util/SparseArray;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 167
    iget-object v2, p0, Lcn/nubia/k/b/f;->c:[B

    iget-object v5, p0, Lcn/nubia/k/b/f;->e:Landroid/util/SparseArray;

    invoke-static {v2, v5}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v2

    if-eqz v2, :cond_b

    .line 168
    array-length v5, v2

    if-nez v5, :cond_d

    .line 169
    :cond_b
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->c:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 170
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 173
    :cond_c
    iget-object v2, p0, Lcn/nubia/k/b/f;->c:[B

    .line 176
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/k/b/f;->g:Ljava/lang/String;

    const-string v8, "jpg"

    invoke-virtual {p0, v6, v7, v8}, Lcn/nubia/k/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v5, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 178
    iget-object v5, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "_size"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v5, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    const-string v6, "relative_path"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    .line 181
    iget-object v5, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    iget-object v7, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcn/nubia/k/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v5, "insert fail: "

    const/4 v6, 0x1

    const-string v7, "is_pending"

    if-eqz v0, :cond_f

    .line 184
    :try_start_0
    iget-object v8, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v9, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v8, v9, :cond_f

    iget-object v8, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-eqz v8, :cond_f

    .line 187
    iget-object v8, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v0, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iput-object v0, v8, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 188
    iput-boolean v6, p0, Lcn/nubia/k/b/f;->o:Z

    goto :goto_4

    .line 190
    :cond_f
    iget-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v8, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_4
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v0, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-nez v0, :cond_10

    .line 203
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 204
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 206
    :cond_10
    iget-boolean v0, p0, Lcn/nubia/k/b/f;->o:Z

    if-eqz v0, :cond_11

    .line 207
    iget-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    iget-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v5, v5, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v6, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-virtual {v0, v5, v6, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    :cond_11
    iget-object v0, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v5, v5, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-static {v0, v5, v2}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result v0

    if-nez v0, :cond_12

    .line 212
    iget-object v0, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 214
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 216
    :cond_12
    iget-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 217
    iget-object v0, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v0, p0, Lcn/nubia/k/b/f;->k:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/k/b/f;->h:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcn/nubia/k/b/f;->b:Lcn/nubia/k/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 4

    const-string v0, "JpegStorageRequest"

    if-eqz p1, :cond_3

    .line 229
    iget-object v1, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v2, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcn/nubia/k/b/f;->l:Lcn/nubia/l/a/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/k/b/f;->c:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/k/b/f;->o:Z

    if-eqz v1, :cond_1

    const-string p1, "Thumbnail has been updated, no need to update"

    .line 240
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcn/nubia/k/b/f;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Lcn/nubia/l/b/b;

    iget-object p1, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/k/b/f;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/l/b/b;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Lcn/nubia/l/b/e;

    iget-object p1, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/k/b/f;->c:[B

    iget v2, p0, Lcn/nubia/k/b/f;->i:I

    iget-object v3, p0, Lcn/nubia/k/b/f;->f:Ljava/lang/String;

    .line 252
    invoke-static {v3}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/l/b/e;-><init>(Landroid/net/Uri;[BIZ)V

    .line 254
    :goto_0
    iget-object p1, p0, Lcn/nubia/k/b/f;->l:Lcn/nubia/l/a/b;

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void

    .line 235
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no thumbnail request because storage fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    const-string p1, ""

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Z)V

    return-void
.end method
