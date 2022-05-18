.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;->onStartCommand(Landroid/content/Intent;II)I
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iput p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->a:F

    iput p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->b:F

    iput p4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->c:F

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->q(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->r(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->a:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->b:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->c:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->q(Landroid/content/Context;FFF)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->p()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v2, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-object v1, v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->s(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->d:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->t(Landroid/net/Uri;)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$b;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
