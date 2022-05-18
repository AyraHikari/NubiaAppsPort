.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;->G(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

.field final synthetic e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;FFFLcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->a:F

    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->b:F

    iput p4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->c:F

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->a:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->b:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->c:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->r(FFF)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$c;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->u()V

    :cond_0
    return-void
.end method
