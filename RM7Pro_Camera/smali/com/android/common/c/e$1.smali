.class Lcom/android/common/c/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/c/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/c/e;


# direct methods
.method constructor <init>(Lcom/android/common/c/e;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " width "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewTargetManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "PreviewTargetManager"

    const-string v1, "surfaceCreated"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {v0, p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 262
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;Z)Z

    .line 265
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->e(Lcom/android/common/c/e;)V

    .line 266
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->b(Lcom/android/common/c/e;)Lcom/android/common/c/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {v0}, Lcom/android/common/c/e;->c(Lcom/android/common/c/e;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/f;->a(Landroid/graphics/SurfaceTexture;)V

    .line 267
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->b(Lcom/android/common/c/e;)Lcom/android/common/c/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {v0}, Lcom/android/common/c/e;->f(Lcom/android/common/c/e;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/f;->a(Landroid/view/SurfaceHolder;)V

    .line 268
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;)Lcom/android/common/c/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;)Lcom/android/common/c/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/common/c/e$a;->a()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "PreviewTargetManager"

    const-string v0, "surfaceDestroyed"

    .line 243
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;)Lcom/android/common/c/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;)Lcom/android/common/c/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/common/c/e$a;->b()V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;Z)Z

    .line 248
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 249
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->b(Lcom/android/common/c/e;)Lcom/android/common/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/f;->b()V

    .line 251
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->c(Lcom/android/common/c/e;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->c(Lcom/android/common/c/e;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 253
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/e;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/android/common/c/e$1;->a:Lcom/android/common/c/e;

    invoke-static {p1}, Lcom/android/common/c/e;->d(Lcom/android/common/c/e;)Lcom/android/common/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/a;->b()V

    return-void
.end method
