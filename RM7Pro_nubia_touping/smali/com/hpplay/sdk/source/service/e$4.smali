.class Lcom/hpplay/sdk/source/service/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/e;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/e;->c:Z

    if-eqz v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 384
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/e$4;->a:Lcom/hpplay/sdk/source/service/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/e;->i(Lcom/hpplay/sdk/source/service/e;)Lcom/hpplay/sdk/source/service/e$b;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/service/e$4$1;

    invoke-direct {v1, p0, p1}, Lcom/hpplay/sdk/source/service/e$4$1;-><init>(Lcom/hpplay/sdk/source/service/e$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/e$b;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "NewLelinkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
