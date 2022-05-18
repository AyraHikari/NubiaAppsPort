.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>()V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    invoke-virtual {v4, v2, v5, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v3, "MBServiceCompat"

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No root for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v4, v5, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
