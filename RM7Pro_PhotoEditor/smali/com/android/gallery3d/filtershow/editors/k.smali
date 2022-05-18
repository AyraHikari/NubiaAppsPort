.class public Lcom/android/gallery3d/filtershow/editors/k;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""


# instance fields
.field y:Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080139

    const v1, 0x7f0b003e

    const v2, 0x7f080182

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/o;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/o;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/k;->y:Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/o;)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/k;->y:Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageEmptiness;->setEditor(Lcom/android/gallery3d/filtershow/editors/k;)V

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method
