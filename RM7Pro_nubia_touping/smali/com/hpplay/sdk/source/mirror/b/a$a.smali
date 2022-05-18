.class Lcom/hpplay/sdk/source/mirror/b/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/b/a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/b/a;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 560
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/b/a;->a(Lcom/hpplay/sdk/source/mirror/b/a;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    iget v1, v0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    .line 562
    new-instance v0, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    .line 563
    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/b/a;->c(Lcom/hpplay/sdk/source/mirror/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->u(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    iget v2, v2, Lcom/hpplay/sdk/source/mirror/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    .line 565
    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/b/a;->b(Lcom/hpplay/sdk/source/mirror/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    const-string v1, "AirPlay/150.33"

    .line 566
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/b/a;->a(Lcom/hpplay/sdk/source/mirror/b/a;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-array v2, v3, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    .line 568
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/a$a;->a:Lcom/hpplay/sdk/source/mirror/b/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b/a;->B()V

    .line 570
    :cond_0
    return-void
.end method
