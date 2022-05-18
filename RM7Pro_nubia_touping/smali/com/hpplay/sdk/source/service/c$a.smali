.class Lcom/hpplay/sdk/source/service/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/c$a;->a:Lcom/hpplay/sdk/source/service/c;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    const/16 v0, 0x1f5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/c$a;->a:Lcom/hpplay/sdk/source/service/c;

    const v1, 0x33c2e

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/service/c;->a(Lcom/hpplay/sdk/source/service/c;I)V

    .line 129
    :cond_0
    return-void
.end method
