.class public Lcom/android/gallery3d/filtershow/editors/t;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# instance fields
.field public r:Lcom/android/gallery3d/filtershow/imageshow/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080111

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/t;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public R()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/t;->getStickerIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/t;->U()V

    :cond_0
    return-void
.end method

.method public T(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    return-void
.end method

.method public U(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;->setStickerIndex(I)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/t;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/t;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/t;->setEditor(Lcom/android/gallery3d/filtershow/editors/t;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/t;->r:Lcom/android/gallery3d/filtershow/imageshow/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/t;->O()V

    :cond_0
    return-void
.end method
