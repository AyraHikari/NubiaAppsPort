.class public Lcom/zte/camera/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/zte/camera/a/a/h;

.field private h:Lcom/zte/camera/a/a/h$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/zte/camera/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->b:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    .line 25
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->f:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->g:Lcom/zte/camera/a/a/h;

    .line 28
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->h:Lcom/zte/camera/a/a/h$a;

    .line 30
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->i:Ljava/util/List;

    .line 32
    iput-object v0, p0, Lcom/zte/camera/a/a/d;->j:Lcom/zte/camera/a/a/g;

    .line 35
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string v1, "create VlogFile"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/zte/camera/a/a/d;->b:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/zte/camera/a/a/d;->b()Z

    return-void
.end method

.method private b()Z
    .locals 3

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string v2, "createVlogSegmentedFile mVideoList is null"

    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Camera/VLOG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/a/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string v2, "createVlogSegmentedFile, sDirectory is null"

    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/camera/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.vtmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    sget-object p1, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string p2, "mVideoList input null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 63
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createVlogSegmentedFile, templateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " segId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VLOG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".mp4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mCurVideoFilename = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 71
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 251
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string v1, "deleteVlogAllTemporaryFiles"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "mHideDirectory null error"

    .line 253
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zte/camera/a/a/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 259
    aget-object v2, v0, v1

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/zte/camera/a/a/g;IIILcom/zte/camera/a/a/g$b;)Z
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 116
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v0, v10, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    .line 123
    iput-object v12, v10, Lcom/zte/camera/a/a/d;->j:Lcom/zte/camera/a/a/g;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 129
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VLOG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "productFinalVideoFile file: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v10, Lcom/zte/camera/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v15, Lcom/zte/camera/a/a/d$a;

    iget-object v6, v10, Lcom/zte/camera/a/a/d;->c:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/zte/camera/a/a/d$a;-><init>(Lcom/zte/camera/a/a/d;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V

    .line 136
    iget-object v0, v10, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    move v0, v14

    .line 139
    :goto_0
    iget-object v1, v10, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, v10, Lcom/zte/camera/a/a/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v2, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productFinalVideoFile lists.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    const-string v1, "productFinalVideoFile mp4 file path size is 0"

    .line 149
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    .line 152
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    if-eqz v12, :cond_3

    .line 175
    iget-object v1, v10, Lcom/zte/camera/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v12, v13, v15, v1, v11}, Lcom/zte/camera/a/a/g;->a(Ljava/util/List;Lcom/zte/camera/a/a/d$a;Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "productFinalVideoFile convertResult = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 120
    :cond_5
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    const-string v1, "productFinalVideoFile parameter: null"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v14
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .line 78
    sget-object v0, Lcom/zte/camera/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVlogSegmentedFile, templateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " segId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/d;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "deleteVlogSegmentedFile param error"

    .line 84
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "deleteVlogSegmentedFile file is not exsit"

    .line 90
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeleteVideoFilename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/d;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
