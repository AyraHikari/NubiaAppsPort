.class Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->i(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->getX()F

    move-result v1

    const-string v2, "save_x"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->getY()F

    move-result v1

    const-string v2, "save_y"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f()F

    move-result p1

    const-string v1, "save_aper"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
