.class Lcom/hpplay/sdk/source/mirror/b/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/b/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/b/b;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 559
    new-instance v0, Lcom/hpplay/sdk/source/protocol/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/f;-><init>()V

    const-string v1, "streams"

    const/4 v2, 0x1

    .line 560
    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/f;->b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    const/4 v2, 0x0

    const-string v3, "type"

    .line 561
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    const-string v1, "streams"

    .line 562
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/f;->a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    new-instance v2, Lcom/hpplay/sdk/source/protocol/d;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/protocol/d;-><init>()V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    .line 565
    invoke-static {v3}, Lcom/hpplay/sdk/source/mirror/b/b;->e(Lcom/hpplay/sdk/source/mirror/b/b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/sdk/source/protocol/d;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 564
    invoke-static {v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/mirror/b/b;Lcom/hpplay/sdk/source/protocol/d;I)Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 540
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/b/b;->b(Lcom/hpplay/sdk/source/mirror/b/b;)I

    .line 542
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/b/b$a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v1, "NewLelinkRtspClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start send teardown \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-array v2, v6, [[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v3}, Lcom/hpplay/sdk/source/mirror/b/b;->c(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/encrypt/d;

    move-result-object v3

    new-array v4, v6, [[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/b/b;->d(Lcom/hpplay/sdk/source/mirror/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mirror/b/b$a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/b/b;->a(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-array v2, v6, [[B

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-static {v3}, Lcom/hpplay/sdk/source/mirror/b/b;->c(Lcom/hpplay/sdk/source/mirror/b/b;)Lcom/hpplay/sdk/source/protocol/encrypt/d;

    move-result-object v3

    new-array v4, v6, [[B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B

    move-result-object v0

    .line 550
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 553
    :cond_1
    const-string v0, "NewLelinkRtspClient"

    const-string v1, "start stopTask"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/b$a;->a:Lcom/hpplay/sdk/source/mirror/b/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/b/b;->B()V

    .line 556
    :cond_2
    return-void
.end method
