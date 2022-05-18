.class Lcom/hpplay/sdk/source/player/d$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/player/d$5;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d$5;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/d$5;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$5$1;->a:Lcom/hpplay/sdk/source/player/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$5$1;->a:Lcom/hpplay/sdk/source/player/d$5;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d$5;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->d(Lcom/hpplay/sdk/source/player/d;)V

    .line 319
    return-void
.end method
