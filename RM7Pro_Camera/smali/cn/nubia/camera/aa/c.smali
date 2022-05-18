.class public Lcn/nubia/camera/aa/c;
.super Lcn/nubia/videogenerator/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aa/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/aa/c$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/videogenerator/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/nubia/videogenerator/b/c$a;

.field private d:Lcn/nubia/camera/v/d;

.field private e:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/nubia/camera/v/d$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcn/nubia/videogenerator/b/c;-><init>()V

    .line 22
    new-instance v0, Lcn/nubia/camera/aa/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/aa/c$a;-><init>(Lcn/nubia/camera/aa/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/c;->a:Lcn/nubia/camera/aa/c$a;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aa/c;->b:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/c;->e:Landroid/util/Range;

    .line 58
    new-instance v0, Lcn/nubia/camera/aa/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aa/c$1;-><init>(Lcn/nubia/camera/aa/c;)V

    iput-object v0, p0, Lcn/nubia/camera/aa/c;->f:Lcn/nubia/camera/v/d$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/aa/c;->d:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aa/c;Lcom/android/common/a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/camera/aa/c;->a(Lcom/android/common/a;)V

    return-void
.end method

.method private a(Lcom/android/common/a;)V
    .locals 5

    const-string v0, "PreviewDataReaderImpl"

    const/4 v1, 0x3

    .line 101
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Lcom/android/common/a;->a:[B

    invoke-direct {p0, v0}, Lcn/nubia/camera/aa/c;->a([B)V

    .line 105
    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/c;->c:Lcn/nubia/videogenerator/b/c$a;

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p1, Lcom/android/common/a;->a:[B

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/b/c$a;->a([B)V

    .line 113
    :cond_1
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/aa/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/videogenerator/b/c$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/videogenerator/b/c$a;

    .line 115
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 117
    iget-object v4, p1, Lcom/android/common/a;->a:[B

    invoke-interface {v3, v4}, Lcn/nubia/videogenerator/b/c$a;->a([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 115
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 107
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private a([B)V
    .locals 4

    .line 123
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/dump/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".yuv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/aa/c$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/aa/c;->a:Lcn/nubia/camera/aa/c$a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    :try_start_0
    iput-object v0, p0, Lcn/nubia/camera/aa/c;->d:Lcn/nubia/camera/v/d;

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/aa/c;->a:Lcn/nubia/camera/aa/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aa/c$a;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcn/nubia/camera/v/d;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/aa/c;->d:Lcn/nubia/camera/v/d;

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/aa/c;->f:Lcn/nubia/camera/v/d$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/v/d;->b(Lcn/nubia/camera/v/d$a;)V

    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/videogenerator/b/c$a;)V
    .locals 0

    monitor-enter p0

    .line 47
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/aa/c;->c:Lcn/nubia/videogenerator/b/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcn/nubia/videogenerator/b/c$a;)V
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aa/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
