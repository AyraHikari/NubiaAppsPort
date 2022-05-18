.class public Lb/a/b/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/a/j/a$c;,
        Lb/a/b/a/j/a$b;
    }
.end annotation


# static fields
.field static f:Landroid/os/HandlerThread;

.field static g:Lb/a/b/a/j/a$c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Messenger;

.field private c:Z

.field public d:Z

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lb/a/b/a/j/a$a;

    invoke-direct {v0, p0}, Lb/a/b/a/j/a$a;-><init>(Lb/a/b/a/j/a;)V

    iput-object v0, p0, Lb/a/b/a/j/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/a/j/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/a/j/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lb/a/b/a/j/a;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/a/j/a;->b:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic b(Lb/a/b/a/j/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/a/j/a;->b:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic c(Lb/a/b/a/j/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/b/a/j/a;->c:Z

    return p0
.end method

.method static synthetic d(Lb/a/b/a/j/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/b/a/j/a;->c:Z

    return p1
.end method

.method static synthetic e(Lb/a/b/a/j/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/a/j/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lb/a/b/a/j/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/a/j/a;->h()V

    return-void
.end method

.method static synthetic g(Lb/a/b/a/j/a;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/a/j/a;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lb/a/b/a/j/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lb/a/b/a/j/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public static i()Lb/a/b/a/j/a;
    .locals 1

    .line 1
    sget-object v0, Lb/a/b/a/j/a$b;->a:Lb/a/b/a/j/a;

    return-object v0
.end method


# virtual methods
.method public j(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lb/a/b/a/j/a;->a:Landroid/content/Context;

    .line 2
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "NubiaTrackEvent"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance p1, Lb/a/b/a/j/a$c;

    sget-object v0, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lb/a/b/a/j/a$c;-><init>(Lb/a/b/a/j/a;Landroid/os/Looper;)V

    sput-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    sget-object v0, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    sget-object p3, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    sget-object p3, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    sget-object p1, Lb/a/b/a/j/a;->g:Lb/a/b/a/j/a$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    sget-object v0, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb/a/b/a/j/a;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lb/a/b/a/j/a;->b:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lb/a/b/a/j/a;->c:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lb/a/b/a/j/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Lb/a/b/a/j/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    iput-object v1, p0, Lb/a/b/a/j/a;->a:Landroid/content/Context;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
