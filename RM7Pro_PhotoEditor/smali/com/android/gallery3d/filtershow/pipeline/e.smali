.class public Lcom/android/gallery3d/filtershow/pipeline/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private b:F

.field private c:I

.field private d:Lcom/android/gallery3d/filtershow/filters/h0;

.field private e:Lcom/android/gallery3d/filtershow/pipeline/i;

.field private volatile f:Z

.field private g:Lcom/android/gallery3d/filtershow/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/d0;

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->d:Lcom/android/gallery3d/filtershow/filters/h0;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/filters/h0;->a(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ImageFilter for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterEnvironment"

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setEnvironment(Lcom/android/gallery3d/filtershow/pipeline/e;)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->b:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->c:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p2, p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setGeneralParameters()V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setEnvironment(Lcom/android/gallery3d/filtershow/pipeline/e;)V

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->g:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public declared-synchronized c()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public d()Lcom/android/gallery3d/filtershow/e/a;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->g:Lcom/android/gallery3d/filtershow/e/a;

    return-object v0
.end method

.method public e(III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->g:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/e/a;->c(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->g:Lcom/android/gallery3d/filtershow/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/e/a;->d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public h()Lcom/android/gallery3d/filtershow/pipeline/i;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->e:Lcom/android/gallery3d/filtershow/pipeline/i;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->c:I

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->b:F

    return v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l(Lcom/android/gallery3d/filtershow/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->g:Lcom/android/gallery3d/filtershow/e/a;

    return-void
.end method

.method public m(Lcom/android/gallery3d/filtershow/filters/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->d:Lcom/android/gallery3d/filtershow/filters/h0;

    return-void
.end method

.method public n(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public o(Lcom/android/gallery3d/filtershow/pipeline/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->e:Lcom/android/gallery3d/filtershow/pipeline/i;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->c:I

    return-void
.end method

.method public q(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->b:F

    return-void
.end method

.method public declared-synchronized r(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
