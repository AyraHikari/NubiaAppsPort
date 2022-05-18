.class Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(I)V
    .locals 3

    .prologue
    .line 223
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   onAuthFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthFailed(I)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 228
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x192

    if-eq p1, v1, :cond_1

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v1}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/api/IBindSdkListener;->onBindCallback(Z)V

    .line 234
    :cond_2
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    const-string v0, "LelinkSourceSDK"

    const-string v1, " onAuthSuccess success "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$100(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp$3;->a:Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;->access$1000(Lcom/hpplay/sdk/source/process/LelinkSourceSdkImp;)Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/IBindSdkListener;->onBindCallback(Z)V

    .line 219
    return-void
.end method
