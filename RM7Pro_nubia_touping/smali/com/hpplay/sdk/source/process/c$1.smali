.class Lcom/hpplay/sdk/source/process/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/ILogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/j;)V
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
    .line 133
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$1;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCastLog(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$1;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$1;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->b(Lcom/hpplay/sdk/source/process/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$1;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/j;->onCastLog(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    iget-object v1, p0, Lcom/hpplay/sdk/source/process/c$1;->a:Lcom/hpplay/sdk/source/process/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/process/c;->a(Lcom/hpplay/sdk/source/process/c;Z)Z

    .line 141
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
