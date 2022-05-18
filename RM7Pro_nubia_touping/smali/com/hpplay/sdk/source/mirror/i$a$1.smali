.class Lcom/hpplay/sdk/source/mirror/i$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mirror/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mirror/i$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/hpplay/sdk/source/mirror/i$a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/i$a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/i$a$1;->b:Lcom/hpplay/sdk/source/mirror/i$a;

    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/i$a$1;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteComplate()V
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a$1;->b:Lcom/hpplay/sdk/source/mirror/i$a;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/i$a$1;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 735
    return-void
.end method
