.class Lcom/hpplay/sdk/source/process/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/c;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(I)V
    .locals 2

    .prologue
    .line 168
    :try_start_0
    const-string v0, "LelinkSdkManager"

    const-string v1, "onAuthFailed "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/l;->onAuthFailed(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    const-string v1, "LelinkSdkManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthSuccess "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  mPcAuthListener == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->c(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/l;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$2;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->d(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/browse/api/AuthListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/browse/api/AuthListener;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
