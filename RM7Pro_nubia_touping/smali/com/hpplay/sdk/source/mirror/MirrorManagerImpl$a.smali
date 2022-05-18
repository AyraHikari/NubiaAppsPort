.class Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

.field private b:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 210
    iput-object p3, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->c:Landroid/content/Intent;

    .line 211
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 215
    const-string v0, "MirrorManagerImpl"

    const-string v1, "ScreenServiceConn onServiceConnected"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    check-cast p2, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$b;->getService()Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    .line 217
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Z)Z

    .line 218
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->b(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/browse/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v2}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->c(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/bean/MirrorInfoBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/browse/b/b;Lcom/hpplay/sdk/source/bean/MirrorInfoBean;)V

    .line 220
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 222
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->e()V

    .line 224
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    const-string v0, "MirrorManagerImpl"

    const-string v1, "--------- ScreenServiceConn onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Z)Z

    .line 230
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->b:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 231
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl$a;->a:Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;->a(Lcom/hpplay/sdk/source/mirror/MirrorManagerImpl;Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    .line 232
    return-void
.end method
