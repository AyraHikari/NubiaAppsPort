.class public Lcn/nubia/camera/multiRecord/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/e;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/ContentValues;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/net/Uri;

.field private e:Landroid/os/ParcelFileDescriptor;

.field private f:Landroidx/e/d;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcn/nubia/k/a/b;

.field private l:Lcn/nubia/l/a/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/content/ContentValues;IIILcn/nubia/k/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcn/nubia/l/a/b;",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/ContentValues;",
            "III",
            "Lcn/nubia/k/b/d;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/nubia/camera/multiRecord/f;->i:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/f;->j:Landroid/util/SparseArray;

    .line 41
    new-instance v1, Lcn/nubia/k/a/b;

    invoke-direct {v1}, Lcn/nubia/k/a/b;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/f;->k:Lcn/nubia/k/a/b;

    .line 42
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/f;->l:Lcn/nubia/l/a/b;

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/f;->c:Landroid/content/ContentResolver;

    .line 54
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/f;->l:Lcn/nubia/l/a/b;

    .line 55
    iput-object p3, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    .line 56
    iput-object p4, p0, Lcn/nubia/camera/multiRecord/f;->j:Landroid/util/SparseArray;

    .line 57
    iput-object p5, p0, Lcn/nubia/camera/multiRecord/f;->b:Landroid/content/ContentValues;

    .line 58
    iput p6, p0, Lcn/nubia/camera/multiRecord/f;->g:I

    .line 59
    iput p7, p0, Lcn/nubia/camera/multiRecord/f;->h:I

    .line 60
    iput p8, p0, Lcn/nubia/camera/multiRecord/f;->i:I

    .line 61
    iput-object p9, v1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    return-void
.end method

.method private declared-synchronized a([BI)V
    .locals 3

    monitor-enter p0

    .line 98
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/f;->f:Landroidx/e/d;

    invoke-virtual {v2, v0}, Landroidx/e/d;->a(Landroid/graphics/Bitmap;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->j:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->j:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object p1

    .line 104
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/multiRecord/f;->a([B)[B

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->f:Landroidx/e/d;

    array-length v2, p1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroidx/e/d;->a(I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a([B)[B
    .locals 4

    const/4 v0, 0x4

    .line 112
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x0

    const/4 v2, 0x5

    .line 113
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v1, 0x6

    const/4 v3, 0x6

    .line 116
    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end with:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeifStorageRequest"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private b()V
    .locals 7

    const-string v0, "initHeifWriter fail"

    const-string v1, "HeifStorageRequest"

    .line 123
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/f;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->d:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/f;->e:Landroid/os/ParcelFileDescriptor;

    .line 124
    new-instance v2, Landroidx/e/d$a;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->e:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget v4, p0, Lcn/nubia/camera/multiRecord/f;->g:I

    iget v5, p0, Lcn/nubia/camera/multiRecord/f;->h:I

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/e/d$a;-><init>(Ljava/io/FileDescriptor;III)V

    .line 125
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/e/d$a;->c(I)Landroidx/e/d$a;

    const/16 v3, 0x5f

    .line 126
    invoke-virtual {v2, v3}, Landroidx/e/d$a;->b(I)Landroidx/e/d$a;

    .line 127
    iget v3, p0, Lcn/nubia/camera/multiRecord/f;->i:I

    invoke-virtual {v2, v3}, Landroidx/e/d$a;->a(I)Landroidx/e/d$a;

    .line 128
    invoke-virtual {v2}, Landroidx/e/d$a;->a()Landroidx/e/d;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/f;->f:Landroidx/e/d;

    .line 129
    invoke-virtual {v2}, Landroidx/e/d;->a()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 133
    invoke-static {v1, v0, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 131
    invoke-static {v1, v0, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 5

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->k:Lcn/nubia/k/a/b;

    sget-object v1, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    iput-object v1, v0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->k:Lcn/nubia/k/a/b;

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->b:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/f;->d:Landroid/net/Uri;

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/f;->b()V

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 78
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {p0, v3, v1}, Lcn/nubia/camera/multiRecord/f;->a([BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/f;->f:Landroidx/e/d;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/e/d;->a(J)V

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/f;->f:Landroidx/e/d;

    invoke-virtual {v1}, Landroidx/e/d;->close()V

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/f;->e:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "HeifStorageRequest"

    const-string v4, "stop HeifWriter fail"

    .line 86
    invoke-static {v3, v4, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/f;->d:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->k:Lcn/nubia/k/a/b;

    return-object v0
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 4

    .line 139
    new-instance p1, Lcn/nubia/l/b/e;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->d:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/f;->a:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v3

    invoke-direct {p1, v0, v1, v3, v2}, Lcn/nubia/l/b/e;-><init>(Landroid/net/Uri;[BIZ)V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/f;->l:Lcn/nubia/l/a/b;

    invoke-virtual {v0, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method
