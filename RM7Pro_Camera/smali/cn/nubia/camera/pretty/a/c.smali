.class public Lcn/nubia/camera/pretty/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/e;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcn/nubia/camera/pretty/a/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/ContentResolver;

.field private g:Lcn/nubia/k/a/a;

.field private h:Lcn/nubia/l/a/b;

.field private i:Landroid/content/ContentValues;

.field private j:Lcn/nubia/k/a/b;

.field private k:Z

.field private l:I

.field private m:Lcn/nubia/k/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "none"

    const-string v1, "PrettyNature"

    const-string v2, "PrettyMoonlight"

    const-string v3, "PrettyPink"

    const-string v4, "PrettyWhiteDew"

    const-string v5, "PrettySweet"

    const-string v6, "PrettyJapan"

    const-string v7, "PrettyBlue"

    const-string v8, "PrettyBeautiful"

    const-string v9, "Effect_CTF_01"

    const-string v10, "Effect_CTF_02"

    const-string v11, "Effect_CTF_03"

    const-string v12, "Effect_CTF_04"

    const-string v13, "Effect_CTF_05"

    const-string v14, "Effect_CTF_07"

    const-string v15, "Effect_CTF_08"

    const-string v16, "pragueThree"

    const-string v17, "fish-eye"

    const-string v18, "film_effect"

    const-string v19, "LOMO_effect"

    const-string v20, "negative-effect"

    const-string v21, "miniature"

    const-string v22, "sketch"

    const-string v23, "gray-scale"

    .line 44
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/pretty/a/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/k/a/a;Lcn/nubia/l/a/b;Landroid/content/ContentValues;Lcn/nubia/camera/pretty/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;ILcn/nubia/k/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/k/a/a;",
            "Lcn/nubia/l/a/b;",
            "Landroid/content/ContentValues;",
            "Lcn/nubia/camera/pretty/a/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcn/nubia/k/b/d;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcn/nubia/k/a/b;

    invoke-direct {v0}, Lcn/nubia/k/a/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/a/c;->k:Z

    .line 87
    iput-object p5, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    .line 88
    iput-object p6, p0, Lcn/nubia/camera/pretty/a/c;->c:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcn/nubia/camera/pretty/a/c;->d:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lcn/nubia/camera/pretty/a/c;->e:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    .line 92
    iput-object p2, p0, Lcn/nubia/camera/pretty/a/c;->g:Lcn/nubia/k/a/a;

    .line 93
    iput-object p3, p0, Lcn/nubia/camera/pretty/a/c;->h:Lcn/nubia/l/a/b;

    .line 94
    iput-object p4, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    .line 95
    iput p9, p0, Lcn/nubia/camera/pretty/a/c;->l:I

    .line 96
    iput-object p10, p0, Lcn/nubia/camera/pretty/a/c;->m:Lcn/nubia/k/b/d;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 296
    :goto_0
    sget-object v2, Lcn/nubia/camera/pretty/a/c;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 297
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a(I)[B
    .locals 3

    .line 259
    invoke-static {}, Lcn/nubia/f/a;->a()Lcn/nubia/f/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 260
    invoke-virtual {v0, v1, v2}, Lcn/nubia/f/a;->a(II)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 261
    invoke-virtual {v0, v1, v2}, Lcn/nubia/f/a;->a(II)V

    const/4 v1, 0x4

    .line 262
    invoke-virtual {v0, v1, p1}, Lcn/nubia/f/a;->a(II)V

    .line 263
    invoke-virtual {v0}, Lcn/nubia/f/a;->b()[B

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 6

    const-string v0, "BokehDataPackRequest"

    const-string v1, "No external depth or main data, just save picture"

    .line 142
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->e:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 145
    sget v0, Lcn/nubia/d/a;->ag:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->e:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v1, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->e:Landroid/util/SparseArray;

    invoke-static {v1, v2}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/c;->e()Lcn/nubia/k/a/b$a;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    return-void
.end method

.method private e()Lcn/nubia/k/a/b$a;
    .locals 9

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    return-object v0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/c;->f()[B

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v1, v1, Lcn/nubia/camera/pretty/a/b;->b:[B

    array-length v1, v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v2, v2, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v2, v2, Lcn/nubia/camera/pretty/a/d;->c:I

    add-int/2addr v1, v2

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/camera/pretty/a/c;->a(I)[B

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v4, v4, Lcn/nubia/camera/pretty/a/b;->a:[B

    array-length v4, v4

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/b;->b:[B

    array-length v6, v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v6, v6, Lcn/nubia/camera/pretty/a/d;->c:I

    add-int/2addr v4, v6

    array-length v6, v0

    add-int/2addr v4, v6

    array-length v6, v1

    add-int/2addr v4, v6

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "_size"

    .line 189
    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/c;->c:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "relative_path"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 195
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v6, v6, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    const-string v7, "w"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 199
    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/b;->a:[B

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 200
    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/b;->b:[B

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 201
    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget-object v6, v6, Lcn/nubia/camera/pretty/a/d;->a:[B

    iget-object v7, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v7, v7, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v7, v7, Lcn/nubia/camera/pretty/a/d;->b:I

    iget-object v8, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v8, v8, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v8, v8, Lcn/nubia/camera/pretty/a/d;->c:I

    invoke-virtual {v2, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move v3, v4

    :goto_0
    const/4 v0, 0x0

    if-nez v3, :cond_2

    .line 212
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v1, v1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    goto :goto_1

    .line 216
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 217
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v2, v2, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/c;->i:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v4, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_3

    .line 220
    sget-object v0, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    goto :goto_2

    :cond_3
    sget-object v0, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    :goto_2
    return-object v0
.end method

.method private f()[B
    .locals 7

    const/16 v0, 0x3c

    new-array v1, v0, [B

    .line 227
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v3, v3, Lcn/nubia/camera/pretty/a/b;->b:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 231
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v3, v3, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v3, v3, Lcn/nubia/camera/pretty/a/d;->c:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 232
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->g:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->h:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 234
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->m:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->k:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->l:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->i:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->j:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 239
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v3, v3, Lcn/nubia/camera/pretty/a/b;->n:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v3, v3, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/nubia/camera/pretty/a/c;->a(Ljava/lang/String;)I

    move-result v3

    .line 242
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v5, v5, Lcn/nubia/camera/pretty/a/b;->b:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; depthLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v5, v5, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    iget v5, v5, Lcn/nubia/camera/pretty/a/d;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mainWidth, mainHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v5, v5, Lcn/nubia/camera/pretty/a/b;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v6, v6, Lcn/nubia/camera/pretty/a/b;->h:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; bokehWidth, bokehHeight: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v6, v6, Lcn/nubia/camera/pretty/a/b;->i:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget v5, v5, Lcn/nubia/camera/pretty/a/b;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; effectID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BokehDataPackRequest"

    invoke-static {v4, v3}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 5

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->m:Lcn/nubia/k/b/d;

    iput-object v1, v0, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_4

    .line 110
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/a/c;->k:Z

    if-eqz v0, :cond_7

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->g:Lcn/nubia/k/a/a;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    move-result-wide v3

    goto :goto_0

    :cond_4
    move-wide v3, v1

    .line 121
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->g:Lcn/nubia/k/a/a;

    if-eqz v0, :cond_6

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    const-wide/32 v0, 0x3200000

    cmp-long v0, v3, v0

    if-gtz v0, :cond_7

    const-string v0, "BokehDataPackRequest"

    const-string v1, "storage is not enough"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    return-object v0

    .line 122
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    return-object v0

    .line 133
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->b:[B

    if-nez v0, :cond_8

    goto :goto_2

    .line 136
    :cond_8
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/c;->d()V

    goto :goto_3

    .line 134
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/c;->b()V

    .line 138
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    return-object v0

    .line 107
    :cond_a
    :goto_4
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    return-object v0

    .line 103
    :cond_b
    :goto_5
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->j:Lcn/nubia/k/a/b;

    return-object v0
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 268
    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v1, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->h:Lcn/nubia/l/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->a:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lcn/nubia/l/b/e;

    iget-object p1, p1, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/c;->b:Lcn/nubia/camera/pretty/a/b;

    iget-object v1, v1, Lcn/nubia/camera/pretty/a/b;->a:[B

    iget v2, p0, Lcn/nubia/camera/pretty/a/c;->l:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/l/b/e;-><init>(Landroid/net/Uri;[BIZ)V

    .line 284
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/c;->h:Lcn/nubia/l/a/b;

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void

    .line 275
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

    const-string v0, "BokehDataPackRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/a/c;->k:Z

    return-void
.end method
