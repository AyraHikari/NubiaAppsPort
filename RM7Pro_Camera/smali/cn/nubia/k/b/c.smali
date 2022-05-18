.class public Lcn/nubia/k/b/c;
.super Lcn/nubia/k/b/a;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/ContentResolver;

.field private d:Lcn/nubia/l/a/b;

.field private e:Lcn/nubia/k/a/a;

.field private f:Ljava/nio/ByteBuffer;

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Matrix;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/ContentValues;

.field private o:Landroid/graphics/Bitmap;

.field private p:Lcn/nubia/m/b;

.field private q:Landroid/os/ConditionVariable;

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Lcn/nubia/k/a/a;",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Landroid/graphics/Matrix;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/ContentValues;",
            "Lcn/nubia/k/b/d;",
            "Lcn/nubia/m/b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 69
    invoke-direct {p0}, Lcn/nubia/k/b/a;-><init>()V

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    .line 39
    iput-object v1, v0, Lcn/nubia/k/b/c;->d:Lcn/nubia/l/a/b;

    .line 40
    iput-object v1, v0, Lcn/nubia/k/b/c;->e:Lcn/nubia/k/a/a;

    .line 42
    iput-object v1, v0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 43
    iput v2, v0, Lcn/nubia/k/b/c;->g:I

    .line 44
    iput v2, v0, Lcn/nubia/k/b/c;->h:I

    .line 45
    iput-object v1, v0, Lcn/nubia/k/b/c;->i:Landroid/graphics/Matrix;

    const/16 v3, 0x46

    .line 46
    iput v3, v0, Lcn/nubia/k/b/c;->j:I

    .line 47
    iput-object v1, v0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    .line 48
    iput-object v1, v0, Lcn/nubia/k/b/c;->l:Ljava/lang/String;

    .line 49
    iput-object v1, v0, Lcn/nubia/k/b/c;->m:Landroid/util/SparseArray;

    .line 50
    iput-object v1, v0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    .line 51
    iput-object v1, v0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    .line 53
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, v0, Lcn/nubia/k/b/c;->q:Landroid/os/ConditionVariable;

    .line 54
    iput v2, v0, Lcn/nubia/k/b/c;->r:I

    .line 238
    iput-boolean v2, v0, Lcn/nubia/k/b/c;->s:Z

    move-object v1, p1

    .line 70
    iput-object v1, v0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    move-object v1, p2

    .line 71
    iput-object v1, v0, Lcn/nubia/k/b/c;->d:Lcn/nubia/l/a/b;

    move-object v1, p3

    .line 72
    iput-object v1, v0, Lcn/nubia/k/b/c;->e:Lcn/nubia/k/a/a;

    move-object v1, p4

    .line 74
    iput-object v1, v0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    move v1, p5

    .line 75
    iput v1, v0, Lcn/nubia/k/b/c;->g:I

    move v1, p6

    .line 76
    iput v1, v0, Lcn/nubia/k/b/c;->h:I

    move-object v1, p7

    .line 77
    iput-object v1, v0, Lcn/nubia/k/b/c;->i:Landroid/graphics/Matrix;

    move v1, p8

    .line 78
    iput v1, v0, Lcn/nubia/k/b/c;->j:I

    move-object v1, p11

    .line 79
    iput-object v1, v0, Lcn/nubia/k/b/c;->m:Landroid/util/SparseArray;

    move-object/from16 v1, p12

    .line 80
    iput-object v1, v0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    move-object v1, p9

    .line 81
    iput-object v1, v0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    move-object v1, p10

    .line 82
    iput-object v1, v0, Lcn/nubia/k/b/c;->l:Ljava/lang/String;

    .line 83
    iget-object v1, v0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    move-object/from16 v3, p13

    iput-object v3, v1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcn/nubia/k/b/c;->p:Lcn/nubia/m/b;

    .line 85
    iget-object v1, v0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    const-string v3, "orientation"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, v0, Lcn/nubia/k/b/c;->r:I

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 13

    const-string v0, "is_pending"

    const-string v1, "relative_path"

    .line 92
    :try_start_0
    iget-object v2, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ByteBufferStorageRequest"

    if-eqz v2, :cond_18

    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 97
    :cond_0
    iget-object v2, p0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v0, "path can not be null"

    .line 98
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 100
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    iget-object v1, p0, Lcn/nubia/k/b/c;->q:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    return-object v0

    .line 102
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 104
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_3
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->s:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 108
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :goto_1
    iget-object v0, p0, Lcn/nubia/k/b/c;->q:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-object v4

    .line 112
    :cond_4
    :try_start_3
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->a:Z

    if-eqz v2, :cond_8

    .line 114
    iget-object v2, p0, Lcn/nubia/k/b/c;->e:Lcn/nubia/k/a/a;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {v2}, Lcn/nubia/k/a/a;->f()J

    move-result-wide v7

    goto :goto_2

    :cond_5
    move-wide v7, v5

    .line 117
    :goto_2
    iget-object v2, p0, Lcn/nubia/k/b/c;->e:Lcn/nubia/k/a/a;

    if-eqz v2, :cond_7

    cmp-long v5, v7, v5

    if-gez v5, :cond_6

    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {v2}, Lcn/nubia/k/a/a;->g()J

    move-result-wide v5

    cmp-long v2, v7, v5

    if-gtz v2, :cond_8

    const-string v0, "storage is not enough"

    .line 123
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 125
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto :goto_0

    .line 118
    :cond_7
    :goto_3
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 120
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto :goto_0

    .line 128
    :cond_8
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->s:Z

    if-eqz v2, :cond_9

    .line 129
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto :goto_1

    .line 132
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute: limit = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", remaining = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", position = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v2, p0, Lcn/nubia/k/b/c;->g:I

    iget v5, p0, Lcn/nubia/k/b/c;->h:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    .line 134
    iget-object v5, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 135
    iput-object v4, p0, Lcn/nubia/k/b/c;->f:Ljava/nio/ByteBuffer;

    .line 136
    iget-object v6, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcn/nubia/k/b/c;->g:I

    iget v10, p0, Lcn/nubia/k/b/c;->h:I

    iget-object v11, p0, Lcn/nubia/k/b/c;->i:Landroid/graphics/Matrix;

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    .line 138
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->s:Z

    if-eqz v2, :cond_a

    .line 139
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto/16 :goto_1

    .line 144
    :cond_a
    iget-object v2, p0, Lcn/nubia/k/b/c;->p:Lcn/nubia/m/b;

    if-eqz v2, :cond_b

    .line 145
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v2

    iget-object v5, p0, Lcn/nubia/k/b/c;->p:Lcn/nubia/m/b;

    iget v5, v5, Lcn/nubia/m/b;->a:I

    iget-object v6, p0, Lcn/nubia/k/b/c;->p:Lcn/nubia/m/b;

    iget v6, v6, Lcn/nubia/m/b;->b:I

    iget-object v7, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v6, v7}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 149
    :cond_b
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->s:Z

    if-eqz v2, :cond_c

    .line 150
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto/16 :goto_1

    .line 153
    :cond_c
    iget-object v2, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    iget v5, p0, Lcn/nubia/k/b/c;->j:I

    invoke-static {v2, v5}, Lcn/nubia/k/c/b;->a(Landroid/graphics/Bitmap;I)Lcn/nubia/k/c/a;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 154
    iget-boolean v5, v2, Lcn/nubia/k/c/a;->a:Z

    if-nez v5, :cond_d

    goto/16 :goto_4

    .line 162
    :cond_d
    iget-boolean v5, p0, Lcn/nubia/k/b/c;->s:Z

    if-eqz v5, :cond_e

    .line 163
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto/16 :goto_1

    .line 166
    :cond_e
    iget-object v5, v2, Lcn/nubia/k/c/a;->b:[B

    .line 167
    iput-object v4, v2, Lcn/nubia/k/c/a;->b:[B

    .line 168
    iget-object v2, p0, Lcn/nubia/k/b/c;->m:Landroid/util/SparseArray;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_10

    if-eqz v5, :cond_10

    .line 169
    iget-object v2, p0, Lcn/nubia/k/b/c;->m:Landroid/util/SparseArray;

    invoke-static {v5, v2}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v5

    if-eqz v5, :cond_f

    .line 170
    array-length v2, v5

    if-nez v2, :cond_10

    .line 171
    :cond_f
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->c:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 172
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    .line 176
    :cond_10
    iget-boolean v2, p0, Lcn/nubia/k/b/c;->s:Z

    if-eqz v2, :cond_11

    .line 177
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto/16 :goto_1

    .line 180
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/k/b/c;->l:Ljava/lang/String;

    const-string v8, "jpg"

    invoke-virtual {p0, v6, v7, v8}, Lcn/nubia/k/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_15

    .line 181
    iget-object v2, p0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 182
    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    const-string v6, "_size"

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    .line 185
    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    iget-object v6, p0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcn/nubia/k/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_12
    iget-object v1, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-object v1, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v2, p0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-nez v1, :cond_13

    .line 193
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 194
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    .line 196
    :cond_13
    iget-object v1, p0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-static {v1, v2, v5}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result v1

    if-nez v1, :cond_14

    .line 197
    iget-object v0, p0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 199
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    .line 201
    :cond_14
    iget-object v1, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 202
    iget-object v1, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/k/b/c;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/k/b/c;->n:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "jinrong"

    const-string v1, "ByteBufferStoreage end"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    .line 207
    :cond_15
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 208
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    :cond_16
    :goto_4
    if-eqz v2, :cond_17

    .line 156
    iput-object v4, v2, Lcn/nubia/k/c/a;->b:[B

    .line 159
    :cond_17
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->b:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 160
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    goto/16 :goto_0

    :cond_18
    :goto_5
    const-string v0, "ByteBuffer can not be null"

    .line 93
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 95
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 213
    iget-object v1, p0, Lcn/nubia/k/b/c;->q:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 214
    throw v0
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
    .locals 4

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v1, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/c;->d:Lcn/nubia/l/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Lcn/nubia/l/b/b;

    iget-object p1, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/k/b/c;->r:I

    iget-object v3, p0, Lcn/nubia/k/b/c;->k:Ljava/lang/String;

    .line 233
    invoke-static {v3}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/l/b/b;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    .line 234
    iget-object p1, p0, Lcn/nubia/k/b/c;->d:Lcn/nubia/l/a/b;

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcn/nubia/k/b/c;->o:Landroid/graphics/Bitmap;

    return-void

    .line 225
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

    const-string v0, "ByteBufferStorageRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcn/nubia/k/b/a;->a(Z)V

    return-void
.end method

.method public c()Lcn/nubia/k/a/b;
    .locals 1

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcn/nubia/k/b/c;->s:Z

    .line 242
    iget-object v0, p0, Lcn/nubia/k/b/c;->q:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 243
    iget-object v0, p0, Lcn/nubia/k/b/c;->b:Lcn/nubia/k/a/b;

    return-object v0
.end method
