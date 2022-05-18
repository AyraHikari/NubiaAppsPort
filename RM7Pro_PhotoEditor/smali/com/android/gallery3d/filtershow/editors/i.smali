.class public Lcom/android/gallery3d/filtershow/editors/i;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/editors/CurvesTextColorPickerView$a;


# instance fields
.field r:Lcom/android/gallery3d/filtershow/imageshow/k;

.field private s:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080181

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/i;->s:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/k;->setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/k;)V

    :cond_0
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->I(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected N()V
    .locals 0

    return-void
.end method

.method public Q()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/i;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->g(Z)V

    return-void
.end method

.method public R()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/k;->m0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/i;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    return-void
.end method

.method public e(I)V
    .locals 2

    const v0, 0x7f0e005b

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    const v1, 0x7f0800c0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    const v1, 0x7f0800c1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    const v1, 0x7f0800c2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    const v1, 0x7f0800c3

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/k;->setChannel(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->s:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/k;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/i;->r:Lcom/android/gallery3d/filtershow/imageshow/k;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->setEditor(Lcom/android/gallery3d/filtershow/editors/i;)V

    return-void
.end method
