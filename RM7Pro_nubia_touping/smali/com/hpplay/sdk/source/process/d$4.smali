.class Lcom/hpplay/sdk/source/process/d$4;
.super Lcom/hpplay/sdk/source/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->d(Lcom/hpplay/sdk/source/process/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   onAuthFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->f(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->f(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthFailed(I)V

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 260
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x192

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/d;->g(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/d;->e(Lcom/hpplay/sdk/source/process/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/process/d;Z)Z

    .line 265
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/d;->g(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/api/IBindSdkListener;->onBindCallback(Z)V

    .line 269
    :cond_2
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 243
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->d(Lcom/hpplay/sdk/source/process/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAuthSuccess success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/process/d;->e(Lcom/hpplay/sdk/source/process/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->f(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->f(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->g(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->e(Lcom/hpplay/sdk/source/process/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/process/d;->a(Lcom/hpplay/sdk/source/process/d;Z)Z

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$4;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->g(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/hpplay/sdk/source/api/IBindSdkListener;->onBindCallback(Z)V

    .line 251
    :cond_1
    return-void
.end method
