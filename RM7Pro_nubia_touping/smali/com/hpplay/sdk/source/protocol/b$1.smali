.class Lcom/hpplay/sdk/source/protocol/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;ILjava/lang/String;Lcom/hpplay/sdk/source/api/IConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/api/IConnectListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/hpplay/sdk/source/protocol/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/protocol/b;Lcom/hpplay/sdk/source/api/IConnectListener;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b$1;->e:Lcom/hpplay/sdk/source/protocol/b;

    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b$1;->a:Lcom/hpplay/sdk/source/api/IConnectListener;

    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/b$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/hpplay/sdk/source/protocol/b$1;->c:I

    iput-object p5, p0, Lcom/hpplay/sdk/source/protocol/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-static {}, Lcom/hpplay/sdk/source/protocol/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$1;->e:Lcom/hpplay/sdk/source/protocol/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Z)Z

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$1;->a:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-interface {v0, v3, v2}, Lcom/hpplay/sdk/source/api/IConnectListener;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V

    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$1;->e:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b$1;->b:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/protocol/b$1;->c:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$1;->e:Lcom/hpplay/sdk/source/protocol/b;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Z)Z

    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$1;->a:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-interface {v0, v3, v2, v2}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    goto :goto_0
.end method
