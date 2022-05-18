.class Lcom/hpplay/sdk/source/protocol/b/a/d$1;
.super Lcom/hpplay/sdk/source/protocol/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/protocol/b/a/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Lcom/hpplay/sdk/source/protocol/b/a/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/protocol/b/a/d;)V
    .locals 1

    .prologue
    .line 169
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/a/d$1;->r:Lcom/hpplay/sdk/source/protocol/b/a/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/b/e;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/d$1;->r:Lcom/hpplay/sdk/source/protocol/b/a/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/protocol/b/a/d;->a:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/d$1;->c:Ljava/security/SecureRandom;

    .line 175
    return-void
.end method
