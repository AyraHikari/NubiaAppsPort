.class Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->setCurrentAperture(F)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->getCurrentApert()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k(FFF)V

    :cond_0
    return-void
.end method
