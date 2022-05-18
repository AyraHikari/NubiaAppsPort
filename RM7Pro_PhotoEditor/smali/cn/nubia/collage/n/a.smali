.class public Lcn/nubia/collage/n/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/n/a$d;,
        Lcn/nubia/collage/n/a$e;,
        Lcn/nubia/collage/n/a$c;,
        Lcn/nubia/collage/n/a$b;
    }
.end annotation


# static fields
.field private static volatile e:Lcn/nubia/collage/n/a;

.field private static f:Landroid/content/Context;


# instance fields
.field private a:Lcn/nubia/collage/n/a$c;

.field private volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/g;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/n/a;->d:Z

    invoke-static {v0}, Lc/d/a/c/c;->h(Z)V

    invoke-static {v0}, Lc/d/a/c/c;->g(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    new-instance v0, Lcn/nubia/collage/n/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/n/a$c;-><init>(Lcn/nubia/collage/n/a;Lcn/nubia/collage/n/a$a;)V

    iput-object v0, p0, Lcn/nubia/collage/n/a;->a:Lcn/nubia/collage/n/a$c;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/n/a;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/n/a;->g(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/nubia/collage/n/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcn/nubia/collage/n/a;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/collage/n/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/n/a;->y(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "assets://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "drawable://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "collage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "filterIcons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "/s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lc/d/a/b/m/b$a;->e:Lc/d/a/b/m/b$a;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lc/d/a/b/m/b$a;->h:Lc/d/a/b/m/b$a;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lc/d/a/b/m/b$a;->g:Lc/d/a/b/m/b$a;

    :goto_1
    invoke-virtual {v0, p1}, Lc/d/a/b/m/b$a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_2
    return-object p1
.end method

.method private f(Ljava/lang/String;ILcn/nubia/collage/n/a$b;)V
    .locals 1

    new-instance v0, Lcn/nubia/collage/n/a$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/nubia/collage/n/a$a;-><init>(Lcn/nubia/collage/n/a;Lcn/nubia/collage/n/a$b;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private g(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/n/a;->t(Ljava/lang/String;I)Lcn/nubia/collage/n/b;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeDngSync  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoEditor"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcn/nubia/collage/n/b;->c:[I

    if-eqz p1, :cond_0

    iget v0, p2, Lcn/nubia/collage/n/b;->a:I

    if-lez v0, :cond_0

    iget p2, p2, Lcn/nubia/collage/n/b;->b:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static l()Lcn/nubia/collage/n/a;
    .locals 2

    sget-object v0, Lcn/nubia/collage/n/a;->e:Lcn/nubia/collage/n/a;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/collage/n/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/a;->e:Lcn/nubia/collage/n/a;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/n/a;

    invoke-direct {v1}, Lcn/nubia/collage/n/a;-><init>()V

    sput-object v1, Lcn/nubia/collage/n/a;->e:Lcn/nubia/collage/n/a;

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
    sget-object v0, Lcn/nubia/collage/n/a;->e:Lcn/nubia/collage/n/a;

    return-object v0
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v2, 0x0

    const-string v3, "_data= ?"

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method private n(Lc/d/a/b/j/e;)I
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    return p1

    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/j/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lc/d/a/b/j/e;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/j/e;->b()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/j/e;->a()I

    move-result p1

    :goto_0
    return p1
.end method

.method private o(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static s(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcn/nubia/collage/n/a;->f:Landroid/content/Context;

    new-instance v0, Lc/d/a/b/c$b;

    invoke-direct {v0}, Lc/d/a/b/c$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/c$b;->v(Z)Lc/d/a/b/c$b;

    invoke-virtual {v0, v1}, Lc/d/a/b/c$b;->w(Z)Lc/d/a/b/c$b;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lc/d/a/b/c$b;->t(Landroid/graphics/Bitmap$Config;)Lc/d/a/b/c$b;

    invoke-virtual {v0}, Lc/d/a/b/c$b;->u()Lc/d/a/b/c;

    move-result-object v0

    new-instance v1, Lc/d/a/b/e$b;

    invoke-direct {v1, p0}, Lc/d/a/b/e$b;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Lc/d/a/b/e$b;->y(I)Lc/d/a/b/e$b;

    new-instance p0, Lcn/nubia/collage/n/a$e;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcn/nubia/collage/n/a$e;-><init>(Lcn/nubia/collage/n/a$a;)V

    invoke-virtual {v1, p0}, Lc/d/a/b/e$b;->x(Lc/d/a/a/b/c;)Lc/d/a/b/e$b;

    new-instance p0, Lcn/nubia/collage/n/a$d;

    invoke-direct {p0, v2}, Lcn/nubia/collage/n/a$d;-><init>(Lcn/nubia/collage/n/a$a;)V

    invoke-virtual {v1, p0}, Lc/d/a/b/e$b;->v(Lc/d/a/a/a/a;)Lc/d/a/b/e$b;

    invoke-virtual {v1, v0}, Lc/d/a/b/e$b;->u(Lc/d/a/b/c;)Lc/d/a/b/e$b;

    invoke-virtual {v1}, Lc/d/a/b/e$b;->t()Lc/d/a/b/e;

    move-result-object p0

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/d/a/b/d;->h(Lc/d/a/b/e;)V

    const-string p0, "PhotoEditor"

    const-string v0, "CollageImageLoader   loaderInit done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;I)Lcn/nubia/collage/n/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private static w(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    const-string v0, "/s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/a;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/collage/n/a;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object p1, Lcn/nubia/collage/n/a;->f:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/e/b;->d(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    :cond_2
    move v8, v1

    move v1, p1

    move p1, v8

    :cond_3
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    int-to-float p1, p1

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v6, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    :pswitch_1
    int-to-float p1, p1

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v6, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    :pswitch_2
    int-to-float p1, p1

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v6, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    :pswitch_3
    int-to-float p1, p1

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v6, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_2
    :pswitch_4
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    :pswitch_5
    const/high16 v0, 0x43340000    # 180.0f

    int-to-float p1, p1

    div-float/2addr p1, v7

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v6, v0, p1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_4
    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc/d/a/b/m/b$a;->t(Ljava/lang/String;)Lc/d/a/b/m/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/d/a/b/m/b$a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized y(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/collage/n/a;->d:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x0

    move v1, p2

    :goto_0
    iget-object v2, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    iget-object v2, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/n/g;

    invoke-virtual {v2, p1}, Lcn/nubia/collage/n/g;->c(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_5

    const/4 v1, 0x2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, -0x1

    :cond_4
    move v1, v3

    :cond_5
    add-int/2addr p2, v3

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    iget-object p2, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->q()V

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    iput-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    iput-object v0, p0, Lcn/nubia/collage/n/a;->a:Lcn/nubia/collage/n/a$c;

    sput-object v0, Lcn/nubia/collage/n/a;->e:Lcn/nubia/collage/n/a;

    sput-object v0, Lcn/nubia/collage/n/a;->f:Landroid/content/Context;

    const-string v0, "PhotoEditor"

    const-string v1, "CollageImageLoader   destoryLoader done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Lc/d/a/b/n/a;Ljava/lang/String;Lcn/nubia/collage/n/a$b;)V
    .locals 1

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-direct {p0, p2}, Lcn/nubia/collage/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1, p3}, Lc/d/a/b/d;->f(Ljava/lang/String;Lc/d/a/b/n/a;Lc/d/a/b/o/a;)V

    return-void
.end method

.method public declared-synchronized j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(Lcn/nubia/collage/n/g;)V
    .locals 6

    iget-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/nubia/collage/n/g;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/nubia/collage/n/a;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/n/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/j/e;

    invoke-direct {p0, v3}, Lcn/nubia/collage/n/a;->n(Lc/d/a/b/j/e;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/collage/n/a;->a:Lcn/nubia/collage/n/a$c;

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/collage/n/a;->f(Ljava/lang/String;ILcn/nubia/collage/n/a$b;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lc/d/a/b/d;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v3

    invoke-direct {p0, v2}, Lcn/nubia/collage/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/collage/n/g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/j/e;

    iget-object v5, p0, Lcn/nubia/collage/n/a;->a:Lcn/nubia/collage/n/a$c;

    invoke-virtual {v3, v2, v4, v5}, Lc/d/a/b/d;->l(Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/o/a;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/String;Lc/d/a/b/j/e;Lcn/nubia/collage/n/a$b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/a;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcn/nubia/collage/n/a;->n(Lc/d/a/b/j/e;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/collage/n/a;->f(Ljava/lang/String;ILcn/nubia/collage/n/a$b;)V

    return-void

    :cond_0
    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/d;->l(Ljava/lang/String;Lc/d/a/b/j/e;Lc/d/a/b/o/a;)V

    :cond_1
    return-void
.end method

.method public r(Ljava/lang/String;Lc/d/a/b/j/e;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/a;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcn/nubia/collage/n/a;->n(Lc/d/a/b/j/e;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/n/a;->g(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc/d/a/b/d;->m(Ljava/lang/String;Lc/d/a/b/j/e;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/nubia/collage/n/a;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized u()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/collage/n/a;->d:Z

    iget-object v0, p0, Lcn/nubia/collage/n/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->o()V

    const-string v0, "CollageImageLoader"

    const-string v1, "CIL   onPause   ImageLoader.pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/collage/n/a;->d:Z

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/d/a/b/d;->g()Lc/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/d;->p()V

    const-string v0, "CollageImageLoader"

    const-string v1, "CIL   onPause   ImageLoader.resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
