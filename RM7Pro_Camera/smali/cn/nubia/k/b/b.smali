.class public Lcn/nubia/k/b/b;
.super Lcn/nubia/k/b/a;
.source "SourceFile"


# instance fields
.field private c:Landroid/graphics/Bitmap;

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

.field private i:Landroid/content/ContentResolver;

.field private j:Lcn/nubia/l/a/b;

.field private k:Lcn/nubia/k/a/a;

.field private l:Lcn/nubia/m/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Lcn/nubia/k/a/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I",
            "Lcn/nubia/k/b/d;",
            "Lcn/nubia/m/b;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcn/nubia/k/b/a;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    .line 35
    iput-object v0, p0, Lcn/nubia/k/b/b;->d:Landroid/util/SparseArray;

    .line 36
    iput-object v0, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcn/nubia/k/b/b;->f:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/nubia/k/b/b;->h:I

    .line 59
    iput-object p1, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lcn/nubia/k/b/b;->j:Lcn/nubia/l/a/b;

    .line 61
    iput-object p3, p0, Lcn/nubia/k/b/b;->k:Lcn/nubia/k/a/a;

    .line 63
    invoke-direct {p0, p4}, Lcn/nubia/k/b/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    .line 64
    iput-object p5, p0, Lcn/nubia/k/b/b;->d:Landroid/util/SparseArray;

    .line 65
    iput-object p6, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcn/nubia/k/b/b;->f:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    .line 68
    iput p9, p0, Lcn/nubia/k/b/b;->h:I

    .line 69
    iget-object p1, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iput-object p10, p1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    .line 70
    iput-object p11, p0, Lcn/nubia/k/b/b;->l:Lcn/nubia/m/b;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 176
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 177
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 178
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    .line 179
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 8

    .line 75
    iget-object v0, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    const-string v1, "BitmapStorageRequest"

    if-nez v0, :cond_0

    const-string v0, "bitmap can not be null"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 78
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "path can not be null"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 83
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/k/b/b;->a:Z

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcn/nubia/k/b/b;->k:Lcn/nubia/k/a/a;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    .line 96
    :goto_0
    iget-object v0, p0, Lcn/nubia/k/b/b;->k:Lcn/nubia/k/a/a;

    if-eqz v0, :cond_6

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->g()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-gtz v0, :cond_7

    const-string v0, "storage is not enough"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 104
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 97
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 99
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 109
    :cond_7
    iget-object v0, p0, Lcn/nubia/k/b/b;->l:Lcn/nubia/m/b;

    if-eqz v0, :cond_8

    .line 110
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/k/b/b;->l:Lcn/nubia/m/b;

    iget v2, v2, Lcn/nubia/m/b;->a:I

    iget-object v3, p0, Lcn/nubia/k/b/b;->l:Lcn/nubia/m/b;

    iget v3, v3, Lcn/nubia/m/b;->b:I

    iget-object v4, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 115
    :cond_8
    iget-object v0, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    const/16 v2, 0x5f

    invoke-static {v0, v2}, Lcn/nubia/k/c/b;->a(Landroid/graphics/Bitmap;I)Lcn/nubia/k/c/a;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 116
    iget-boolean v3, v0, Lcn/nubia/k/c/a;->a:Z

    if-nez v3, :cond_9

    goto/16 :goto_2

    .line 124
    :cond_9
    iget-object v3, v0, Lcn/nubia/k/c/a;->b:[B

    .line 125
    iput-object v2, v0, Lcn/nubia/k/c/a;->b:[B

    .line 127
    iget-object v0, p0, Lcn/nubia/k/b/b;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    if-eqz v3, :cond_b

    .line 128
    iget-object v0, p0, Lcn/nubia/k/b/b;->d:Landroid/util/SparseArray;

    invoke-static {v3, v0}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 129
    array-length v0, v3

    if-nez v0, :cond_b

    .line 130
    :cond_a
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->c:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 131
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 135
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/k/b/b;->f:Ljava/lang/String;

    const-string v6, "jpg"

    invoke-virtual {p0, v4, v5, v6}, Lcn/nubia/k/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_f

    .line 136
    iget-object v0, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 137
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    array-length v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "_size"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    const-string v4, "_data"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    const-string v4, "relative_path"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 140
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    iget-object v5, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcn/nubia/k/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_c
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v4, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    invoke-static {v4, v6, v7}, Lcn/nubia/k/c/c;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v4, v4, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v0, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-nez v0, :cond_d

    .line 149
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 150
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 152
    :cond_d
    iget-object v0, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-static {v0, v1, v3}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result v0

    if-nez v0, :cond_e

    .line 153
    iget-object v0, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 155
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 157
    :cond_e
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 158
    iget-object v0, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/k/b/b;->i:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/k/b/b;->g:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    .line 163
    :cond_f
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 164
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0

    :cond_10
    :goto_2
    if-eqz v0, :cond_11

    .line 118
    iput-object v2, v0, Lcn/nubia/k/c/a;->b:[B

    .line 121
    :cond_11
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->b:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 122
    iget-object v0, p0, Lcn/nubia/k/b/b;->b:Lcn/nubia/k/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/k/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v1, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/b;->j:Lcn/nubia/l/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lcn/nubia/l/b/b;

    iget-object p1, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/k/b/b;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/k/b/b;->h:I

    iget-object v3, p0, Lcn/nubia/k/b/b;->e:Ljava/lang/String;

    .line 199
    invoke-static {v3}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/l/b/b;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    .line 200
    iget-object p1, p0, Lcn/nubia/k/b/b;->j:Lcn/nubia/l/a/b;

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void

    .line 191
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

    const-string v0, "BitmapStorageRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Z)V

    return-void
.end method
