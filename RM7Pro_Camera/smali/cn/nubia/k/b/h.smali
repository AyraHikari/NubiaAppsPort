.class public Lcn/nubia/k/b/h;
.super Lcn/nubia/k/b/a;
.source "SourceFile"


# instance fields
.field private c:[B

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/ContentValues;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/content/ContentResolver;

.field private l:Lcn/nubia/l/a/b;

.field private m:Lcn/nubia/k/a/a;

.field private n:Lcn/nubia/m/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Lcn/nubia/k/a/a;",
            "[BII",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ContentValues;",
            "Lcn/nubia/k/b/d;",
            "Lcn/nubia/m/b;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcn/nubia/k/b/a;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/k/b/h;->c:[B

    .line 39
    iput-object v0, p0, Lcn/nubia/k/b/h;->d:Landroid/util/SparseArray;

    .line 40
    iput-object v0, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcn/nubia/k/b/h;->f:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcn/nubia/k/b/h;->h:I

    .line 44
    iput v1, p0, Lcn/nubia/k/b/h;->i:I

    .line 45
    iput v1, p0, Lcn/nubia/k/b/h;->j:I

    .line 46
    iput-object v0, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    .line 47
    iput-object v0, p0, Lcn/nubia/k/b/h;->l:Lcn/nubia/l/a/b;

    .line 48
    iput-object v0, p0, Lcn/nubia/k/b/h;->m:Lcn/nubia/k/a/a;

    .line 65
    iput-object p1, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcn/nubia/k/b/h;->l:Lcn/nubia/l/a/b;

    .line 67
    iput-object p3, p0, Lcn/nubia/k/b/h;->m:Lcn/nubia/k/a/a;

    .line 68
    iput-object p4, p0, Lcn/nubia/k/b/h;->c:[B

    .line 69
    iput-object p7, p0, Lcn/nubia/k/b/h;->d:Landroid/util/SparseArray;

    .line 70
    iput-object p8, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    .line 71
    iput-object p9, p0, Lcn/nubia/k/b/h;->f:Ljava/lang/String;

    .line 72
    iput-object p11, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    .line 73
    iput p5, p0, Lcn/nubia/k/b/h;->h:I

    .line 74
    iput p6, p0, Lcn/nubia/k/b/h;->i:I

    .line 75
    iput p10, p0, Lcn/nubia/k/b/h;->j:I

    .line 76
    iget-object p1, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iput-object p12, p1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    .line 77
    iput-object p13, p0, Lcn/nubia/k/b/h;->n:Lcn/nubia/m/b;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 8

    .line 82
    iget-object v0, p0, Lcn/nubia/k/b/h;->c:[B

    const-string v1, "YuvStorageRequest"

    if-eqz v0, :cond_13

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Path can not be null"

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 90
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 92
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/k/b/h;->a:Z

    if-eqz v0, :cond_7

    .line 100
    iget-object v0, p0, Lcn/nubia/k/b/h;->m:Lcn/nubia/k/a/a;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    .line 103
    :goto_0
    iget-object v0, p0, Lcn/nubia/k/b/h;->m:Lcn/nubia/k/a/a;

    if-eqz v0, :cond_6

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->g()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-gtz v0, :cond_7

    const-string v0, "storage is not enough"

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 111
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 104
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 106
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 115
    :cond_7
    iget-object v0, p0, Lcn/nubia/k/b/h;->n:Lcn/nubia/m/b;

    const/16 v2, 0x5f

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    iget v0, v0, Lcn/nubia/m/b;->b:I

    if-nez v0, :cond_8

    goto :goto_2

    .line 130
    :cond_8
    iget v0, p0, Lcn/nubia/k/b/h;->h:I

    iget v4, p0, Lcn/nubia/k/b/h;->i:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    new-instance v4, Lcn/nubia/algorithm/utils/a;

    iget-object v5, p0, Lcn/nubia/k/b/h;->c:[B

    invoke-direct {v4, v5}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 132
    iget v5, p0, Lcn/nubia/k/b/h;->h:I

    iget v6, p0, Lcn/nubia/k/b/h;->i:I

    invoke-static {v4, v0, v5, v6}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Landroid/graphics/Bitmap;II)V

    .line 133
    invoke-virtual {v4}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 135
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/k/b/h;->n:Lcn/nubia/m/b;

    iget v5, v5, Lcn/nubia/m/b;->a:I

    iget-object v6, p0, Lcn/nubia/k/b/h;->n:Lcn/nubia/m/b;

    iget v6, v6, Lcn/nubia/m/b;->b:I

    invoke-virtual {v4, v5, v6, v0}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 136
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 139
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_3

    .line 116
    :cond_9
    :goto_2
    iget-object v0, p0, Lcn/nubia/k/b/h;->c:[B

    iget v4, p0, Lcn/nubia/k/b/h;->h:I

    iget v5, p0, Lcn/nubia/k/b/h;->i:I

    invoke-static {v0, v4, v5, v2}, Lcn/nubia/k/c/b;->a([BIII)Lcn/nubia/k/c/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 117
    iget-boolean v2, v0, Lcn/nubia/k/c/a;->a:Z

    if-nez v2, :cond_a

    goto/16 :goto_4

    .line 125
    :cond_a
    iget-object v2, v0, Lcn/nubia/k/c/a;->b:[B

    .line 126
    iput-object v3, v0, Lcn/nubia/k/c/a;->b:[B

    move-object v0, v2

    .line 142
    :goto_3
    iget-object v2, p0, Lcn/nubia/k/b/h;->d:Landroid/util/SparseArray;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_c

    if-eqz v0, :cond_c

    .line 143
    iget-object v2, p0, Lcn/nubia/k/b/h;->d:Landroid/util/SparseArray;

    invoke-static {v0, v2}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 144
    array-length v2, v0

    if-nez v2, :cond_c

    .line 145
    :cond_b
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->c:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 146
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 150
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/k/b/h;->f:Ljava/lang/String;

    const-string v6, "jpg"

    invoke-virtual {p0, v4, v5, v6}, Lcn/nubia/k/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_10

    .line 151
    iget-object v2, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 152
    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "_size"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    const-string v4, "_data"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    const-string v4, "relative_path"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    .line 155
    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    iget-object v5, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcn/nubia/k/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_d
    iget-object v2, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    iget-object v2, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v4, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    invoke-static {v4, v6, v7}, Lcn/nubia/k/c/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 162
    iget-object v2, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-nez v2, :cond_e

    .line 163
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 164
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 166
    :cond_e
    iget-object v2, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v4, v4, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-static {v2, v4, v0}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 167
    iget-object v0, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 169
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 171
    :cond_f
    iget-object v0, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 172
    iget-object v0, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/k/b/h;->k:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/k/b/h;->g:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 177
    :cond_10
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 178
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    :cond_11
    :goto_4
    if-eqz v0, :cond_12

    .line 119
    iput-object v3, v0, Lcn/nubia/k/c/a;->b:[B

    .line 122
    :cond_12
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->b:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 123
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0

    :cond_13
    :goto_5
    const-string v0, "YUV can not be null"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 85
    iget-object v0, p0, Lcn/nubia/k/b/h;->b:Lcn/nubia/k/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 186
    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v1, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/h;->l:Lcn/nubia/l/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/h;->c:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcn/nubia/l/b/h;

    iget-object v2, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/k/b/h;->c:[B

    iget v4, p0, Lcn/nubia/k/b/h;->j:I

    iget v5, p0, Lcn/nubia/k/b/h;->h:I

    iget v6, p0, Lcn/nubia/k/b/h;->i:I

    iget-object p1, p0, Lcn/nubia/k/b/h;->e:Ljava/lang/String;

    .line 202
    invoke-static {p1}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/l/b/h;-><init>(Landroid/net/Uri;[BIIIZ)V

    .line 203
    iget-object p1, p0, Lcn/nubia/k/b/h;->l:Lcn/nubia/l/a/b;

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void

    .line 192
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no thumbnail request because storage fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YuvStorageRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Z)V

    return-void
.end method
