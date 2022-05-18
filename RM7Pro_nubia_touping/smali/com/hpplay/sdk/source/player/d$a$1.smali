.class Lcom/hpplay/sdk/source/player/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d$a;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d$a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d$a;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 801
    const-string v0, "LelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---picture result --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->d()V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    const-string v0, "401"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 806
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 808
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    :try_start_0
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 812
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 813
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 814
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 816
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 817
    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v3, v3, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v3, v1}, Lcom/hpplay/sdk/source/player/d;->c(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    .line 818
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/player/d;->d(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    const-string v2, "PUT"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/player/d;->e(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    const-string v2, "/photo"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/player/d;->f(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    .line 821
    const-string v1, "LelinkPlayerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "author  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a$1;->a:Lcom/hpplay/sdk/source/player/d$a;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    const v1, 0x3345a

    const v2, 0x33852

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onError(II)V

    goto/16 :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
