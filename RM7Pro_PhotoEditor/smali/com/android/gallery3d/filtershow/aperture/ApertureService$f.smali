.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ApertureService"

    const-string v1, "BokehService died!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lb/a/a/a;)Lb/a/a/a;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$f;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->s(Z)V

    :cond_0
    return-void
.end method
