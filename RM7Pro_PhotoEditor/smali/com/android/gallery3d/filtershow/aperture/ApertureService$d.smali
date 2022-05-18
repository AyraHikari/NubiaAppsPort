.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;->E(Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;

.field final synthetic b:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->t(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "   queueLoad  times:"

    const-string v4, "ApertureService"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x9c4

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->u(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "    destoryed "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->b:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$d;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService$h;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->x(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->w(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method
