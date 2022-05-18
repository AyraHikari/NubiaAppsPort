.class Lcom/hpplay/sdk/source/service/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/d;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/service/d;->c:Z

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/d$2;->a:Lcom/hpplay/sdk/source/service/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/d;->g(Lcom/hpplay/sdk/source/service/d;)Lcom/hpplay/sdk/source/service/d$b;

    move-result-object v0

    new-instance v1, Lcom/hpplay/sdk/source/service/d$2$1;

    invoke-direct {v1, p0, p1}, Lcom/hpplay/sdk/source/service/d$2$1;-><init>(Lcom/hpplay/sdk/source/service/d$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/service/d$b;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "LelinkServiceConnect"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
