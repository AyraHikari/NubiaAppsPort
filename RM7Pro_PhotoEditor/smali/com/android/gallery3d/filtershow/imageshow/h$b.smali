.class public final Lcom/android/gallery3d/filtershow/imageshow/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/android/gallery3d/filtershow/filters/z$b;

.field public b:F

.field public c:Landroid/graphics/RectF;

.field public d:I

.field public e:Landroid/graphics/Path;

.field public f:Landroid/graphics/Path;

.field public g:I

.field public h:I

.field public i:Lcom/android/gallery3d/filtershow/filters/s$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/z;->k0()Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/b0;->k0()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->p0()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->t0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/s;->n0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/z;->k0()Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/b0;->k0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->p0()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/s;->n0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->t0()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lcom/android/gallery3d/filtershow/imageshow/h$b;)V
    .locals 2

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    return-void
.end method

.method public c(Lcom/android/gallery3d/filtershow/filters/y$b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y$b;->s()C

    move-result p1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/filters/s$b;->s(C)Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    return-void
.end method

.method public d(Lcom/android/gallery3d/filtershow/filters/y$c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/y$c;->v()I

    move-result p1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/filters/z$b;->s(I)Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/z;->k0()Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/b0;->k0()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->p0()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/s;->n0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/j;->t0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iget v3, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/z$b;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",straighten:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",crop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mirror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/s$b;->t()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",shapeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "drawPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mReal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
