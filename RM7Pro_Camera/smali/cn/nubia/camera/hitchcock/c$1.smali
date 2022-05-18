.class Lcn/nubia/camera/hitchcock/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/hitchcock/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->g()I

    move-result v1

    .line 513
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->h()I

    move-result v2

    mul-int v3, v1, v2

    .line 514
    new-array v4, v3, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_0

    .line 517
    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x4

    goto :goto_0

    .line 519
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;

    move-result-object v1

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/hitchcock/i;->f()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    .line 522
    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/hitchcock/i;->f()J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v4}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-gtz v2, :cond_1

    .line 523
    new-instance v2, Lcn/nubia/camera/hitchcock/a$b;

    invoke-direct {v2}, Lcn/nubia/camera/hitchcock/a$b;-><init>()V

    const/4 v3, 0x1

    .line 524
    iput-boolean v3, v2, Lcn/nubia/camera/hitchcock/a$b;->c:Z

    .line 525
    iput-object v0, v2, Lcn/nubia/camera/hitchcock/a$b;->b:Landroid/graphics/Bitmap;

    .line 526
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v3

    iput-wide v3, v2, Lcn/nubia/camera/hitchcock/a$b;->a:J

    .line 527
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a$b;)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/hitchcock/i;->e()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 531
    new-instance v2, Lcn/nubia/camera/hitchcock/a$b;

    invoke-direct {v2}, Lcn/nubia/camera/hitchcock/a$b;-><init>()V

    .line 532
    iput-boolean v5, v2, Lcn/nubia/camera/hitchcock/a$b;->c:Z

    .line 533
    iput-object v0, v2, Lcn/nubia/camera/hitchcock/a$b;->b:Landroid/graphics/Bitmap;

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v3

    iput-wide v3, v2, Lcn/nubia/camera/hitchcock/a$b;->a:J

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$1;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a$b;)V

    .line 543
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
