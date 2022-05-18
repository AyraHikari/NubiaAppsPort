.class public Lcom/android/gallery3d/filtershow/pipeline/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/pipeline/i;


# static fields
.field private static final p:Landroid/graphics/Bitmap$Config;

.field private static volatile q:Landroid/support/v8/renderscript/RenderScript;


# instance fields
.field private a:Z

.field private b:Lcom/android/gallery3d/filtershow/filters/g0;

.field private volatile c:Landroid/graphics/Bitmap;

.field private volatile d:Landroid/graphics/Bitmap;

.field private e:Lcom/android/gallery3d/filtershow/pipeline/e;

.field private f:Lcom/android/gallery3d/filtershow/pipeline/b;

.field private volatile g:Landroid/support/v8/renderscript/Allocation;

.field private volatile h:Landroid/support/v8/renderscript/Allocation;

.field protected volatile i:Landroid/support/v8/renderscript/Allocation;

.field protected volatile j:Landroid/support/v8/renderscript/Allocation;

.field private volatile k:I

.field private volatile l:I

.field private volatile m:F

.field private volatile n:F

.field private volatile o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/gallery3d/filtershow/pipeline/c;->p:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/g0;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->c:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->d:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/e;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/b;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/b;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->f:Lcom/android/gallery3d/filtershow/pipeline/b;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->g:Landroid/support/v8/renderscript/Allocation;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->h:Landroid/support/v8/renderscript/Allocation;

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->k:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->m:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->n:F

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->o:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized g(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;

    if-eqz v1, :cond_0

    const-string v1, "CachingPipeline"

    const-string v2, "A prior RS context exists when calling setRenderScriptContext"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->i()V

    :cond_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "CachingPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyPixelAllocations in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->k:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized i()V
    .locals 2

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized j()Landroid/support/v8/renderscript/RenderScript;
    .locals 2

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private k(Lcom/android/gallery3d/filtershow/pipeline/l;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "ICON_RENDERING"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p1, "FILTERS_RENDERING"

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "FULL_RENDERING"

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p1, "GEOMETRY_RENDERING"

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string p1, "PARTIAL_RENDERING"

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "HIGHRES_RENDERING"

    return-object p1

    :cond_5
    const-string p1, "UNKNOWN TYPE!"

    return-object p1
.end method

.method private l(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "crop"

    const-string v1, "keepCropSize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    :goto_0
    const/4 v3, -0x1

    if-ltz p2, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/gallery3d/filtershow/filters/j;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/j;->r0()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/j;->q0()I

    move-result v3

    move v9, v4

    move v4, v3

    move v3, v9

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-lez v3, :cond_6

    if-lez v4, :cond_6

    sget-object v5, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge p2, v6, :cond_4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v6, :cond_3

    instance-of v8, v6, Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v8, :cond_3

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/y;->n0()Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/imageshow/d;->d(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_2

    move v2, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/y$c;->s(Lcom/android/gallery3d/filtershow/filters/y$c;)Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v5

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/y$c;->u()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "reversal"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    move v4, v3

    move v3, v9

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepCropSize width "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2

    :cond_6
    return-object p1
.end method

.method private u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/e;->o(Lcom/android/gallery3d/filtershow/pipeline/i;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/e;->m(Lcom/android/gallery3d/filtershow/filters/h0;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/e;->l(Lcom/android/gallery3d/filtershow/e/a;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->n:F

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->m:F

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->q(F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->p(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->n(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->r(Z)V

    return-void
.end method

.method private declared-synchronized w(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->h:Landroid/support/v8/renderscript/Allocation;

    sget-object v3, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->h:Landroid/support/v8/renderscript/Allocation;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->g:Landroid/support/v8/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p1, v1, v5}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->d:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v3, v4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->g:Landroid/support/v8/renderscript/Allocation;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/pipeline/c;->q:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized c()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)Z
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->k:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->l:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/pipeline/c;->h()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Lcom/android/gallery3d/filtershow/pipeline/c;->p:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/gallery3d/filtershow/pipeline/c;->p:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    sget-object v3, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {v0, v1, v3, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->j:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    move v1, v2

    :goto_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->i:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->k:I

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->l:I

    if-eq v0, v3, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->k:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->l:I

    :goto_5
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->a:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareRenderscriptAllocations: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CachingPipeline"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method public f(Lcom/android/gallery3d/filtershow/pipeline/o;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/gallery3d/filtershow/filters/m;->s0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/gallery3d/filtershow/filters/t;->v0(Ljava/util/Vector;Z)V

    invoke-static {p2, p3}, Lcom/android/gallery3d/filtershow/filters/n;->w0(Ljava/util/Vector;Z)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->f:Lcom/android/gallery3d/filtershow/pipeline/b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p3, v0, p2, v1}, Lcom/android/gallery3d/filtershow/pipeline/b;->g(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/o;->d(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized m(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "CachingPipeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render image of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/c;->k(Lcom/android/gallery3d/filtershow/pipeline/l;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-ne v6, v2, :cond_5

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->k()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/pipeline/e;->d()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->a0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->b()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->c()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/android/gallery3d/filtershow/e/b;->f(Landroid/content/Context;Lcom/android/gallery3d/filtershow/e/a;Landroid/net/Uri;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "CachingPipeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get bitmap for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/c;->k(Lcom/android/gallery3d/filtershow/pipeline/l;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eq v6, v7, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-ne v6, v5, :cond_7

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/pipeline/c;->w(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    :cond_7
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->a:Z

    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    const-string v6, "CachingPipeline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after update, req bitmap ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ? resizeOriginal ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-ne v6, v7, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-ne v6, v5, :cond_b

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->h:Landroid/support/v8/renderscript/Allocation;

    :goto_0
    invoke-virtual {v6, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_a
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->g:Landroid/support/v8/renderscript/Allocation;

    goto :goto_0

    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eq v6, v5, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eq v6, v3, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v6

    if-eq v6, v2, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v2

    const/4 v6, 0x6

    if-ne v2, v6, :cond_13

    :cond_c
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v2

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/filtershow/pipeline/e;->p(I)V

    goto :goto_3

    :cond_d
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/filtershow/pipeline/e;->p(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->g()I

    move-result v2

    if-ne v2, v3, :cond_11

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->X()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_e

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :try_start_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_f

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->y()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_f
    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v6, v8, v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->e(III)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v1, v11

    div-float/2addr v1, v10

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v2, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v1, v3

    goto :goto_4

    :cond_10
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_11
    :goto_4
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/pipeline/l;->m(Landroid/graphics/Bitmap;)V

    :cond_12
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {p1, v4}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    :cond_13
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 5

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/m;->s0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/t;->v0(Ljava/util/Vector;Z)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/filters/n;->w0(Ljava/util/Vector;Z)V

    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/l;->m(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized o(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/android/gallery3d/filtershow/filters/m;->s0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/t;->v0(Ljava/util/Vector;Z)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/filters/n;->w0(Ljava/util/Vector;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->p(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->q(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {v1, p2}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p2, p1, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/c;->l(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p2, p1, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 5

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/l;->m(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->e(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 5

    const-class v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v4, 0x6

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/pipeline/e;->p(I)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/l;->m(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->b:Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/filters/a;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOriginal, size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CachingPipeline"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/c;->u(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/c;->w(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    return-void
.end method

.method public t(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->m:F

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/c;->e:Lcom/android/gallery3d/filtershow/pipeline/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/e;->r(Z)V

    return-void
.end method
