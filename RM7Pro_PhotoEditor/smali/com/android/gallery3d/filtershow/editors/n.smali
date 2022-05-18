.class public Lcom/android/gallery3d/filtershow/editors/n;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# instance fields
.field private r:Lcom/android/gallery3d/filtershow/imageshow/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f08010d

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/o;->G()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public R()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/o;->getMosaicEffect()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public S()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/o;->getMosaicSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/o;->S()V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/o;->setEraseMode(Z)V

    :cond_0
    return-void
.end method

.method public V(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;->setInitImage(Z)V

    :cond_0
    return-void
.end method

.method public W(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;->setMosaicEffect(I)V

    :cond_0
    return-void
.end method

.method public X(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setMosaicSize sizeIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;->setMosaicSize(I)V

    :cond_0
    return-void
.end method

.method public Y(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/o;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/o;->setEditor(Lcom/android/gallery3d/filtershow/editors/n;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "test"

    const-string v1, " editorMosaic finalApplyCalled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    if-eqz v1, :cond_0

    const-string v1, " editorMosaic finalApplyCalled============"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/n;->r:Lcom/android/gallery3d/filtershow/imageshow/o;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/o;->L()V

    :cond_0
    return-void
.end method
