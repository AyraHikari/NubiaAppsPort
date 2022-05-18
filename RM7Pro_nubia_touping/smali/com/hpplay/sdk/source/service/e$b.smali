.class Lcom/hpplay/sdk/source/service/e$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/e;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/service/e;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/e$b;->a:Lcom/hpplay/sdk/source/service/e;

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 238
    return-void
.end method
