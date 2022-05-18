.class Lcom/hpplay/sdk/source/process/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IAPICallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/process/c;->b(I[Ljava/lang/Object;)V
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
    .line 599
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/c$6;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/c$6;->a:Lcom/hpplay/sdk/source/process/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/c;->j(Lcom/hpplay/sdk/source/process/c;)Lcom/hpplay/sdk/source/i;

    move-result-object v0

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/i;->onResult(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    const-string v1, "LelinkSdkManager"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
