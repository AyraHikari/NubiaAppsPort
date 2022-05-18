.class public Lcom/android/gallery3d/filtershow/editors/v;
.super Lcom/android/gallery3d/filtershow/editors/a;
.source ""


# instance fields
.field z:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f08026b

    const v1, 0x7f0b0058

    const v2, 0x7f080188

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/c0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c0;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/v;->z:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/c0;)V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/v;->z:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setEditor(Lcom/android/gallery3d/filtershow/editors/a;)V

    return-void
.end method
