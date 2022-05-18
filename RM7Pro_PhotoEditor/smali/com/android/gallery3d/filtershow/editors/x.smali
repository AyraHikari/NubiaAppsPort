.class public Lcom/android/gallery3d/filtershow/editors/x;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# instance fields
.field public r:Lcom/android/gallery3d/filtershow/imageshow/v;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080114

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->s:I

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->getBubbleIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public R()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->s:I

    return v0
.end method

.method public S()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->getWordAlpha()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    return v0
.end method

.method public U()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->getColorIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->c0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->b0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->f0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Y()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->i0()V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->j0()V

    :cond_0
    return-void
.end method

.method public a0()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->k0()V

    :cond_0
    return-void
.end method

.method public b0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setBubbleIndex(I)V

    :cond_0
    return-void
.end method

.method public c0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/x;->s:I

    return-void
.end method

.method public d0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    return-void
.end method

.method public e0(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setWordAlpha(F)V

    :cond_0
    return-void
.end method

.method public f0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setBold(Z)V

    :cond_0
    return-void
.end method

.method public g0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setColor(I)V

    :cond_0
    return-void
.end method

.method public h0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setColorIndex(I)V

    :cond_0
    return-void
.end method

.method public i0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setShadow(Z)V

    :cond_0
    return-void
.end method

.method public j0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->setWordsChanged(Z)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/v;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/v;->setEditor(Lcom/android/gallery3d/filtershow/editors/x;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/x;->r:Lcom/android/gallery3d/filtershow/imageshow/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/v;->S()V

    :cond_0
    return-void
.end method
