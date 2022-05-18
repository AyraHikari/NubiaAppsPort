.class public Lcn/nubia/collage/n/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/n/f$c;,
        Lcn/nubia/collage/n/f$d;
    }
.end annotation


# static fields
.field private static volatile k:Lcn/nubia/collage/n/f;


# instance fields
.field private a:Lc/d/a/b/j/e;

.field private final b:Landroid/graphics/BitmapFactory$Options;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Landroid/graphics/Bitmap;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:Lcn/nubia/collage/n/j;

.field private h:Lcn/nubia/collage/n/h;

.field private i:Lcn/nubia/collage/o/b/d;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/n/f;->b:Landroid/graphics/BitmapFactory$Options;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/n/f;->j:Ljava/util/List;

    new-instance v1, Lc/d/a/b/j/e;

    const/16 v2, 0xb4

    invoke-static {v2}, Lcn/nubia/collage/m;->d(I)I

    move-result v2

    const/16 v3, 0xf0

    invoke-static {v3}, Lcn/nubia/collage/m;->d(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lc/d/a/b/j/e;-><init>(II)V

    iput-object v1, p0, Lcn/nubia/collage/n/f;->a:Lc/d/a/b/j/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcn/nubia/collage/n/h;->f()Lcn/nubia/collage/n/h;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    return-void
.end method

.method private E(I)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v1, v0, Lcn/nubia/collage/n/f$c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/n/f$c;

    iget-object v2, v2, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcn/nubia/collage/n/f$c;->c:Landroid/graphics/Matrix;

    invoke-static {v2, v0}, Lcn/nubia/collage/m;->c(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_0
    return-void
.end method

.method private K([I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    aget v5, p1, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    if-ge v3, v1, :cond_1

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget v4, p1, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/n/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/f;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/n/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/o/b/d;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/f;->i:Lcn/nubia/collage/o/b/d;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/n/j;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/f;->g:Lcn/nubia/collage/n/j;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/collage/n/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    return-object p0
.end method

.method public static k()Lcn/nubia/collage/n/f;
    .locals 2

    sget-object v0, Lcn/nubia/collage/n/f;->k:Lcn/nubia/collage/n/f;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/collage/n/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/f;->k:Lcn/nubia/collage/n/f;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/n/f;

    invoke-direct {v1}, Lcn/nubia/collage/n/f;-><init>()V

    sput-object v1, Lcn/nubia/collage/n/f;->k:Lcn/nubia/collage/n/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/collage/n/f;->k:Lcn/nubia/collage/n/f;

    return-object v0
.end method

.method private v(II)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/n/d;->d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v0, v0, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcn/nubia/collage/n/d;->d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aput-object p2, v0, p1

    :cond_3
    :goto_1
    return-void
.end method

.method private x(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/n/f$c;

    iget-object v0, p1, Lcn/nubia/collage/n/f$c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    iput v0, p1, Lcn/nubia/collage/n/f$c;->b:I

    return-void
.end method

.method private y(I)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/a;->v()V

    return-void
.end method

.method public B(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->y(I)V

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v1, v0, Lcn/nubia/collage/n/f$c;->c:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->E(I)V

    iget v0, v0, Lcn/nubia/collage/n/f$c;->b:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcn/nubia/collage/n/f;->v(II)V

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/h;->j(Ljava/lang/String;)V

    return-void
.end method

.method public D(Lcn/nubia/collage/o/b/d;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/f;->i:Lcn/nubia/collage/o/b/d;

    return-void
.end method

.method public F(I)V
    .locals 3

    const/16 v0, 0xf0

    const/16 v1, 0xb4

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    new-instance p1, Lc/d/a/b/j/e;

    invoke-static {v1}, Lcn/nubia/collage/m;->d(I)I

    move-result v1

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    invoke-direct {p1, v1, v0}, Lc/d/a/b/j/e;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Lc/d/a/b/j/e;

    invoke-static {v1}, Lcn/nubia/collage/m;->d(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v1, v0}, Lc/d/a/b/j/e;-><init>(II)V

    :goto_0
    iput-object p1, p0, Lcn/nubia/collage/n/f;->a:Lc/d/a/b/j/e;

    return-void
.end method

.method public G(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcn/nubia/collage/n/i;->e()Lcn/nubia/collage/n/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/collage/n/i;->g(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method public H(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->x(I)V

    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    new-instance v1, Lcn/nubia/collage/n/f$c;

    invoke-direct {v1}, Lcn/nubia/collage/n/f$c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Landroid/content/ContentResolver;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "ImageManager"

    const-string v2, "ERROER!!!! sortTime imagepaths is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    const-wide/16 v3, 0x0

    const-string v5, "datetaken"

    const-string v6, "date_modified"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    move v11, v15

    :goto_0
    if-ge v11, v1, :cond_4

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v10, v12, [Ljava/lang/String;

    iget-object v7, v0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v10, v15

    const/16 v16, 0x0

    const-string v17, "_data = ?"

    move-object/from16 v7, p1

    move-object v9, v13

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move v15, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v8, v15, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v12, v8, v3

    if-eqz v12, :cond_1

    aput-wide v8, v2, v17

    goto :goto_1

    :cond_1
    cmp-long v8, v10, v3

    if-eqz v8, :cond_2

    aput-wide v10, v2, v17

    goto :goto_1

    :cond_2
    aput-wide v3, v2, v17

    :cond_3
    :goto_1
    add-int/lit8 v11, v17, 0x1

    move v12, v15

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    new-array v3, v1, [I

    iput-object v3, v0, Lcn/nubia/collage/n/f;->f:[I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    iget-object v4, v0, Lcn/nubia/collage/n/f;->f:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_9

    add-int/lit8 v3, v15, 0x1

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_8

    aget-wide v5, v2, v15

    aget-wide v7, v2, v4

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    aget-wide v5, v2, v15

    aget-wide v7, v2, v4

    aput-wide v7, v2, v15

    aput-wide v5, v2, v4

    iget-object v5, v0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v15, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v6, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcn/nubia/collage/n/f;->f:[I

    aget v6, v5, v15

    aget v7, v5, v4

    aput v7, v5, v15

    aput v6, v5, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move v15, v3

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lcn/nubia/collage/n/f;->f:[I

    invoke-direct {v0, v1}, Lcn/nubia/collage/n/f;->K([I)V

    return-void
.end method

.method public L(II)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-ltz p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong Param:ImageManage.exchangeUserImage: from"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",to"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",size"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M()V
    .locals 8

    iget-object v0, p0, Lcn/nubia/collage/n/f;->f:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcn/nubia/collage/n/f;->f:[I

    aget v6, v5, v2

    aget v7, v5, v4

    if-le v6, v7, :cond_2

    aget v6, v5, v2

    aget v7, v5, v4

    aput v7, v5, v2

    aput v6, v5, v4

    aget v5, v1, v2

    aget v6, v1, v4

    aput v6, v1, v2

    aput v5, v1, v4

    iget-object v5, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v6, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcn/nubia/collage/n/f;->K([I)V

    return-void
.end method

.method public f(I)Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0, p1}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/n/f;->b:Landroid/graphics/BitmapFactory$Options;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/n/f;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcn/nubia/collage/n/f;->b:Landroid/graphics/BitmapFactory$Options;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/a;->h()V

    const-string v0, "ImageManager"

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcn/nubia/collage/n/f;->w()V

    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/n/h;->c()V

    iput-object v1, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    :cond_0
    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/d;->e()V

    invoke-static {}, Lcn/nubia/collage/n/i;->e()Lcn/nubia/collage/n/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/i;->c()V

    iput-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    sput-object v1, Lcn/nubia/collage/n/f;->k:Lcn/nubia/collage/n/f;

    return-void
.end method

.method public h(II)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget v1, v0, Lcn/nubia/collage/n/f$c;->b:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput p2, v0, Lcn/nubia/collage/n/f$c;->b:I

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->y(I)V

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->E(I)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/n/f;->v(II)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/d;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/n/f$c;

    iget p1, p1, Lcn/nubia/collage/n/f$c;->b:I

    return p1
.end method

.method public l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/h;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public m(I)Landroid/graphics/Bitmap;
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/n/f$c;

    iget-object v0, p1, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/h;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o(Lcn/nubia/collage/n/f$d;)V
    .locals 4

    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/nubia/collage/n/f;->a:Lc/d/a/b/j/e;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcn/nubia/collage/n/j;

    invoke-direct {v2}, Lcn/nubia/collage/n/j;-><init>()V

    iput-object v2, p0, Lcn/nubia/collage/n/f;->g:Lcn/nubia/collage/n/j;

    new-instance v3, Lcn/nubia/collage/n/f$b;

    invoke-direct {v3, p0, v1, p1}, Lcn/nubia/collage/n/f$b;-><init>(Lcn/nubia/collage/n/f;Ljava/util/List;Lcn/nubia/collage/n/f$d;)V

    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/collage/n/j;->g(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public p(Landroid/content/res/Resources;)V
    .locals 1

    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/d;->h(Landroid/content/res/Resources;)V

    return-void
.end method

.method public q(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/collage/n/h;->h(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)Z

    return-void
.end method

.method public r(I)V
    .locals 4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v0, v0, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/n/f;->j:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/collage/n/f;->a:Lc/d/a/b/j/e;

    new-instance v3, Lcn/nubia/collage/n/f$a;

    invoke-direct {v3, p0, p1}, Lcn/nubia/collage/n/f$a;-><init>(Lcn/nubia/collage/n/f;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/collage/n/a;->q(Ljava/lang/String;Lc/d/a/b/j/e;Lcn/nubia/collage/n/a$b;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public s(I)Landroid/graphics/Bitmap;
    .locals 4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v0, v0, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/n/f;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/collage/n/f;->a:Lc/d/a/b/j/e;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/collage/n/a;->r(Ljava/lang/String;Lc/d/a/b/j/e;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/n/f$c;

    iget-object p1, p1, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->y(I)V

    iget-object v0, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/n/f$c;

    iget-object v1, v0, Lcn/nubia/collage/n/f$c;->c:Landroid/graphics/Matrix;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/f;->E(I)V

    iget v0, v0, Lcn/nubia/collage/n/f$c;->b:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcn/nubia/collage/n/f;->v(II)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/f;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/a;->u()V

    return-void
.end method

.method public w()V
    .locals 5

    const-string v0, "ImageManager"

    const-string v1, "recycleAllBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/n/f;->g:Lcn/nubia/collage/n/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/n/j;->e()V

    iput-object v1, p0, Lcn/nubia/collage/n/f;->g:Lcn/nubia/collage/n/j;

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/n/f$c;

    iget-object v3, v3, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/n/f$c;

    iput-object v1, v4, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/nubia/collage/n/i;->e()Lcn/nubia/collage/n/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/collage/n/i;->f()V

    :goto_1
    iget-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcn/nubia/collage/n/f;->y(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/nubia/collage/n/f;->h:Lcn/nubia/collage/n/h;

    invoke-virtual {v0}, Lcn/nubia/collage/n/h;->i()V

    invoke-static {}, Lcn/nubia/collage/n/d;->g()Lcn/nubia/collage/n/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/d;->i()V

    return-void
.end method

.method public z()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/n/f;->d:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/collage/n/f;->y(I)V

    invoke-direct {p0, v0}, Lcn/nubia/collage/n/f;->E(I)V

    iget-object v1, p0, Lcn/nubia/collage/n/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/n/f$c;

    iget v1, v1, Lcn/nubia/collage/n/f$c;->b:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/collage/n/f;->v(II)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/collage/n/f;->x(I)V

    invoke-direct {p0, v0}, Lcn/nubia/collage/n/f;->y(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
