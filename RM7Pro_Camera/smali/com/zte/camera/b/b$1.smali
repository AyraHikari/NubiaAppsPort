.class Lcom/zte/camera/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/b/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/b/b;


# direct methods
.method constructor <init>(Lcom/zte/camera/b/b;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/camera/b/a;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTextureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VlogModuleView"

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/camera/a/a/i;->a(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/camera/b/a;->a(I)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "texture width ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VlogModuleView"

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zte/camera/b/a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/camera/a/a/i;->a(IJ)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/camera/b/a;->a(IJ)Z

    :cond_1
    return-void
.end method

.method public a(Landroid/opengl/EGLContext;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zte/camera/b/b$1;->a:Lcom/zte/camera/b/b;

    invoke-static {v0}, Lcom/zte/camera/b/b;->a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/camera/a/a/i;->a(Landroid/opengl/EGLContext;)V

    :cond_0
    return-void
.end method
