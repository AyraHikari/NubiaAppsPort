.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final e:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

.field final synthetic f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->a:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    const-string v1, "ApertureService"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->u(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->q(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->a:Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->r(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LoadTask  run "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ma:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->e:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->s(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;->f:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    const-string v0, "load finish"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    const-string v0, "loadtask run destory"

    goto :goto_0
.end method
