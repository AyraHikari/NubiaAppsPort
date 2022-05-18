.class public Lcom/android/gallery3d/filtershow/pipeline/q;
.super Lcom/android/gallery3d/filtershow/pipeline/j;
.source ""


# instance fields
.field private d:Lcom/android/gallery3d/filtershow/pipeline/c;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/pipeline/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->d:Lcom/android/gallery3d/filtershow/pipeline/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->e:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->f:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->X()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v1

    const-string v2, "Preview"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/c;-><init>(Lcom/android/gallery3d/filtershow/filters/g0;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->d:Lcom/android/gallery3d/filtershow/pipeline/c;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/gallery3d/filtershow/pipeline/j$a;)Lcom/android/gallery3d/filtershow/pipeline/j$b;
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->L()Lcom/android/gallery3d/filtershow/pipeline/o;

    move-result-object p1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->M()Lcom/android/gallery3d/filtershow/pipeline/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/p;->a()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->d:Lcom/android/gallery3d/filtershow/pipeline/c;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/gallery3d/filtershow/pipeline/c;->f(Lcom/android/gallery3d/filtershow/pipeline/o;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/o;->b()Lcom/android/gallery3d/filtershow/pipeline/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/a;->e(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/o;->b()Lcom/android/gallery3d/filtershow/pipeline/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/a;->f()V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/o;->f()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Lcom/android/gallery3d/filtershow/pipeline/j$b;)V
    .locals 0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->o0()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->f0()V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/q;->l()V

    :cond_0
    return-void
.end method

.method public k(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->d:Lcom/android/gallery3d/filtershow/pipeline/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/c;->s(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->f:Z

    return-void
.end method

.method public l()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->e:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/j;->h(Lcom/android/gallery3d/filtershow/pipeline/j$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/q;->e:Z

    :cond_1
    return-void
.end method
