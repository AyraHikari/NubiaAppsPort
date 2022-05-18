.class Lcn/nubia/camera/ag/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ag/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ag/d;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-virtual {v0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 727
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v0

    .line 728
    iget-object v2, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->g()I

    move-result v2

    .line 729
    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v3}, Lcn/nubia/camera/ag/d;->j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->h()I

    move-result v3

    .line 730
    iget-object v4, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v4}, Lcn/nubia/camera/ag/d;->j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_6

    if-eqz v4, :cond_6

    .line 731
    array-length v0, v4

    mul-int v1, v2, v3

    mul-int/lit8 v5, v1, 0x4

    if-eq v0, v5, :cond_1

    goto/16 :goto_3

    .line 734
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0, v2, v3}, Lcn/nubia/camera/ag/d;->b(Lcn/nubia/camera/ag/d;II)V

    .line 735
    new-array v0, v1, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    if-ge v6, v1, :cond_2

    mul-int/lit8 v8, v6, 0x4

    .line 737
    aget-byte v9, v4, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v7

    aget-byte v7, v4, v8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v9, v10, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 739
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v1}, Lcn/nubia/camera/ag/d;->k(Lcn/nubia/camera/ag/d;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->l(Lcn/nubia/camera/ag/d;)I

    move-result v2

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    .line 741
    iget-object v2, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->k(Lcn/nubia/camera/ag/d;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v3}, Lcn/nubia/camera/ag/d;->m(Lcn/nubia/camera/ag/d;)I

    move-result v3

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    .line 742
    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v3}, Lcn/nubia/camera/ag/d;->l(Lcn/nubia/camera/ag/d;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v4}, Lcn/nubia/camera/ag/d;->m(Lcn/nubia/camera/ag/d;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 743
    fill-array-data v1, :array_0

    .line 744
    iget-object v2, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->l(Lcn/nubia/camera/ag/d;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v3}, Lcn/nubia/camera/ag/d;->m(Lcn/nubia/camera/ag/d;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/algorithm/utils/HistUtil;->getMaxHis(Landroid/graphics/Bitmap;[III)I

    .line 745
    aget v0, v1, v5

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 746
    iget-object v2, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    monitor-enter v2

    .line 747
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v3}, Lcn/nubia/camera/ag/d;->n(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/b;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    .line 748
    invoke-static {v3}, Lcn/nubia/camera/ag/d;->o(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/a;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    .line 751
    aget v4, v1, v3

    if-le v0, v4, :cond_4

    aget v1, v1, v7

    if-le v0, v1, :cond_4

    .line 752
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->n(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/nubia/camera/ag/b;->a(I)V

    .line 753
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->o(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/nubia/camera/ag/a;->a(I)V

    goto :goto_1

    .line 755
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->n(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/ag/b;->a(I)V

    .line 756
    iget-object v0, p0, Lcn/nubia/camera/ag/d$1;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->o(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/camera/ag/a;->a(I)V

    .line 758
    :goto_1
    monitor-exit v2

    return-void

    .line 749
    :cond_5
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 758
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_3
    return-void

    :array_0
    .array-data 4
        0xa
        0x14
        0x1e
    .end array-data
.end method
