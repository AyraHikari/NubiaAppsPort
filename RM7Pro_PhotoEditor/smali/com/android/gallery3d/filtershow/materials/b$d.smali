.class Lcom/android/gallery3d/filtershow/materials/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/b;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->l(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->l(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/b;->g(Lcom/android/gallery3d/filtershow/materials/b;Z)Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/b;->n(Lcom/android/gallery3d/filtershow/materials/b;J)J

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/b$e;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/b;->m(Lcom/android/gallery3d/filtershow/materials/b;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/materials/b$e;-><init>(Lcom/android/gallery3d/filtershow/materials/b;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->c(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->d(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/b$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->c(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/b$d;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/b;->d(Lcom/android/gallery3d/filtershow/materials/b;)Lcom/android/gallery3d/filtershow/materials/b$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/d;->n(Lcom/android/gallery3d/filtershow/materials/d$c;)V

    :cond_1
    return-void
.end method
