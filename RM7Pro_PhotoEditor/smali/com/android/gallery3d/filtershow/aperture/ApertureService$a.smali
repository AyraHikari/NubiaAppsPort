.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;->onDestroy()V
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submitword   release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApertureService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$a;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->p()V

    :cond_0
    return-void
.end method
