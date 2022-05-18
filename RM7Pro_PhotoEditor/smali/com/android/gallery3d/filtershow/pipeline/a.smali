.class public Lcom/android/gallery3d/filtershow/pipeline/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/support/v8/renderscript/Allocation;

.field private c:Z

.field private d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->c:Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/filtershow/e/a;->d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v2, 0x81

    invoke-static {v0, p1, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->b:Landroid/support/v8/renderscript/Allocation;

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public e(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->O(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->Y(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->d:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    :goto_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->b:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized g(Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
