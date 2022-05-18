.class Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "ApertureService"

    if-nez p2, :cond_0

    const-string p2, "service connected binder null"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "Service Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->i(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lb/a/a/a$a;->d(Landroid/os/IBinder;)Lb/a/a/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lb/a/a/a;)Lb/a/a/a;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p2}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->j(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lb/a/a/a;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lb/a/a/a;

    move-result-object p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->k(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->l(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/a/a/a;->b(Landroid/net/Uri;Landroid/os/Messenger;)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service Connected  success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->d(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->m(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->v(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/Future;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->v(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/Future;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->v(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/Future;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->v(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Ljava/util/concurrent/Future;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;->p()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;)Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;

    :cond_3
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->y(Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-static {p2, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->z(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    :cond_4
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p2, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string p2, "Service Connected over"

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ApertureService"

    const-string v0, "Service Disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureService$e;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureService;Lb/a/a/a;)Lb/a/a/a;

    return-void
.end method
