.class Lcom/hpplay/sdk/source/protocol/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/protocol/b;->b(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/protocol/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/protocol/b;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b$5;->a:Lcom/hpplay/sdk/source/protocol/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 465
    invoke-static {}, Lcom/hpplay/sdk/source/protocol/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revese : \n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Switching Protocols"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$5;->a:Lcom/hpplay/sdk/source/protocol/b;

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(I[Ljava/lang/Object;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$5;->a:Lcom/hpplay/sdk/source/protocol/b;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;)V

    goto :goto_0
.end method
