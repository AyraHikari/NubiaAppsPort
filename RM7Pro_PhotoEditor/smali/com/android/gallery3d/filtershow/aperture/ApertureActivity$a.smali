.class Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->l()V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->A()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->g()F

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->h()F

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f()F

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->m(FFF)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->setCurrentAperture(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->d(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const v2, 0x7f0e000b

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->j()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->p(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->A()Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->setCurrentAperture(F)V

    goto :goto_1

    :cond_6
    const-string p1, "ApertureActivity"

    const-string v0, "msg_set apertureimage null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method
