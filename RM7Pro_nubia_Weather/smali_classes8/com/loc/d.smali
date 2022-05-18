.class public final Lcom/loc/d;
.super Ljava/lang/Object;
.source "AmapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/d$a;,
        Lcom/loc/d$b;,
        Lcom/loc/d$c;
    }
.end annotation


# static fields
.field private static D:Z

.field private static F:Z

.field public static volatile f:Z


# instance fields
.field private A:Landroid/content/Context;

.field private B:Z

.field private volatile C:Z

.field private E:Z

.field private G:Lcom/loc/h;

.field private H:Landroid/content/ServiceConnection;

.field private volatile I:Z

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/loc/d$c;

.field c:Lcom/loc/g;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field public g:Z

.field h:Lcom/loc/i;

.field i:Landroid/os/Messenger;

.field j:Landroid/os/Messenger;

.field k:Landroid/content/Intent;

.field l:I

.field m:Lcom/loc/d$b;

.field n:Z

.field o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field p:Ljava/lang/Object;

.field q:Lcom/loc/en;

.field r:Z

.field s:Lcom/loc/e;

.field t:Ljava/lang/String;

.field u:Lcom/amap/api/location/AMapLocationQualityReport;

.field v:Z

.field w:Z

.field x:Lcom/loc/d$a;

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/d;->D:Z

    sput-boolean v1, Lcom/loc/d;->f:Z

    sput-boolean v1, Lcom/loc/d;->F:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/loc/d;->c:Lcom/loc/g;

    iput-boolean v2, p0, Lcom/loc/d;->B:Z

    iput-boolean v2, p0, Lcom/loc/d;->C:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/loc/d;->e:Z

    iput-boolean v3, p0, Lcom/loc/d;->g:Z

    iput-object v1, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/d;->j:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    iput v2, p0, Lcom/loc/d;->l:I

    iput-boolean v3, p0, Lcom/loc/d;->E:Z

    iput-object v1, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    iput-boolean v2, p0, Lcom/loc/d;->n:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/loc/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->p:Ljava/lang/Object;

    iput-object v1, p0, Lcom/loc/d;->q:Lcom/loc/en;

    iput-boolean v2, p0, Lcom/loc/d;->r:Z

    iput-object v1, p0, Lcom/loc/d;->s:Lcom/loc/e;

    iput-object v1, p0, Lcom/loc/d;->G:Lcom/loc/h;

    iput-object v1, p0, Lcom/loc/d;->t:Ljava/lang/String;

    new-instance v0, Lcom/loc/d$1;

    invoke-direct {v0, p0}, Lcom/loc/d$1;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->H:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iput-boolean v2, p0, Lcom/loc/d;->v:Z

    iput-boolean v2, p0, Lcom/loc/d;->w:Z

    iput-boolean v2, p0, Lcom/loc/d;->I:Z

    iput-object v1, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    iput-object v1, p0, Lcom/loc/d;->y:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/d;->z:Z

    iput-object p1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    if-nez p3, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/d$c;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/d$c;-><init>(Lcom/loc/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lcom/loc/i;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/d;->h:Lcom/loc/i;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Lcom/loc/d$b;

    const-string v1, "amapLocManagerThread"

    invoke-direct {v0, v1, p0}, Lcom/loc/d$b;-><init>(Ljava/lang/String;Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    invoke-virtual {v0}, Lcom/loc/d$b;->start()V

    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    invoke-virtual {v0}, Lcom/loc/d$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/d;->a(Landroid/os/Looper;)Lcom/loc/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/d;->c:Lcom/loc/g;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/en;

    invoke-direct {v0}, Lcom/loc/en;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    :cond_0
    return-void

    :cond_1
    :try_start_4
    new-instance v0, Lcom/loc/d$c;

    invoke-direct {v0, p0}, Lcom/loc/d$c;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "init 1"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_5
    new-instance v0, Lcom/loc/d$c;

    invoke-direct {v0, p0, p3}, Lcom/loc/d$c;-><init>(Lcom/loc/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "ALManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "init 5"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private a(Landroid/os/Looper;)Lcom/loc/d$a;
    .locals 2

    iget-object v1, p0, Lcom/loc/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/loc/d$a;

    invoke-direct {v0, p0, p1}, Lcom/loc/d$a;-><init>(Lcom/loc/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/loc/dn;)Lcom/loc/ds;
    .locals 3

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/dn;->f()Lcom/loc/ds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "doFirstCacheLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget-object v1, p0, Lcom/loc/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    invoke-virtual {v0, p1}, Lcom/loc/d$a;->removeMessages(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ej;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->t:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v2, p0, Lcom/loc/d;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/loc/d;->j:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    instance-of v0, v2, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sending message to a Handler on a dead thread"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    instance-of v3, v2, Landroid/os/RemoteException;

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/loc/d;->B:Z

    :cond_4
    const-string v0, "ALManager"

    const-string v1, "sendLocMessage"

    invoke-static {v2, v0, v1}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Lcom/loc/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    iget-object v2, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    invoke-virtual {v2, v0, p3, p4}, Lcom/loc/d$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/loc/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amapapi"

    const-string v1, "-------------\u8c03\u7528\u540e\u53f0\u5b9a\u4f4d\u670d\u52a1\uff0c\u7f3a\u5c11\u6743\u9650\uff1aandroid.permission.FOREGROUND_SERVICE--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForegroundService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v5, p0, Lcom/loc/d;->z:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, "nb"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/d;->y:Ljava/lang/String;

    const-string v1, "statics"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/loc/dm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/loc/d;->c:Lcom/loc/g;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/loc/d;->c:Lcom/loc/g;

    const/4 v4, 0x0

    iput v4, v3, Lcom/loc/g;->w:I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sput-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/loc/d;->c:Lcom/loc/g;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/loc/d;->c:Lcom/loc/g;

    iget-object v4, p0, Lcom/loc/d;->y:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/loc/d;->a(Lcom/amap/api/location/AMapLocation;Lcom/loc/dm;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2
    const-string v3, "AmapLocationManager"

    const-string v4, "resultLbsLocationSuccess"

    invoke-static {v1, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_2
    move-object v1, v2

    move-object v0, v2

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/amap/api/location/AMapLocation;Lcom/loc/dm;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "amapLocation is null#0801"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    :cond_2
    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V

    iget-object v0, p0, Lcom/loc/d;->c:Lcom/loc/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v1}, Lcom/loc/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setGPSSatellites(I)V

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v1}, Lcom/loc/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setGpsStatus(I)V

    :cond_3
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->h(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationQualityReport;->setWifiAble(Z)V

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/ep;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {p2}, Lcom/loc/dm;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    :cond_6
    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    sget-boolean v1, Lcom/loc/d;->F:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationQualityReport;->setInstallHighDangerMockApp(Z)V

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/loc/d;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/d;->y:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "loc"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "lastLocNb"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f6

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/loc/dm;->d(J)V

    :cond_7
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/loc/en;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;Lcom/loc/dm;)V

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/loc/en;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-virtual {v1}, Lcom/loc/d$c;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-virtual {v0, v1}, Lcom/loc/d$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/loc/d;->n:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "ALManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "ALManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_5
    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/loc/d;->k()V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->m()V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    iget-boolean v1, p0, Lcom/loc/d;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "optBundle"

    iget-object v3, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/loc/d;->C:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/d;->g:Z

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/d;->a(Lcom/amap/api/location/AMapLocation;Lcom/loc/dm;)V

    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/loc/d;->a(I)V

    const/16 v0, 0x401

    const/4 v1, 0x0

    const-wide/32 v2, 0x493e0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "resultGpsLocationSuccess"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/d;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v4, v0, v6

    if-nez v4, :cond_1

    cmpl-double v4, v2, v6

    if-eqz v4, :cond_2

    :cond_1
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v2, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "errorLatLng"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/en;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "LatLng is error#0802"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ep;->c(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/loc/ep;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/loc/ep;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/loc/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/loc/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/d;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/loc/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/loc/dn;)Lcom/loc/ds;
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v5, Lcom/loc/dm;

    invoke-direct {v5}, Lcom/loc/dm;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/loc/dm;->c(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/l;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/loc/n;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/dn;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/loc/dn;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p1, v5}, Lcom/loc/dn;->b(Lcom/loc/dm;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/loc/ei;->l()Z

    move-result v6

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Lcom/loc/dn;)Lcom/loc/ds;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-nez v1, :cond_8

    if-nez v6, :cond_2

    move v4, v3

    :cond_2
    :try_start_5
    invoke-virtual {p1, v4, v5}, Lcom/loc/dn;->a(ZLcom/loc/dm;)Lcom/loc/ds;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lcom/loc/ds;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/loc/dn;->b(Lcom/loc/ds;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_3
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/loc/ds;->clone()Lcom/amap/api/location/AMapLocation;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_4
    :try_start_8
    iget-object v4, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/loc/d;->h:Lcom/loc/i;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/loc/d;->h:Lcom/loc/i;

    iget-object v7, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v8

    invoke-virtual {v4, v0, v2, v8, v9}, Lcom/loc/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    :cond_4
    :goto_5
    :try_start_9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_5

    const-string v4, "loc"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "nb"

    invoke-virtual {v1}, Lcom/loc/ds;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "statics"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/loc/d;->a(Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    :try_start_a
    sget-boolean v0, Lcom/loc/d;->f:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/d;->f:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {p1}, Lcom/loc/dn;->c()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/dn;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    new-instance v0, Lcom/loc/dm;

    invoke-direct {v0}, Lcom/loc/dm;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/loc/dn;->a(ZLcom/loc/dm;)Lcom/loc/ds;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    :goto_7
    :try_start_c
    invoke-virtual {p1}, Lcom/loc/dn;->d()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    move-object v0, v1

    :goto_8
    return-object v0

    :catch_0
    move-exception v0

    :try_start_d
    const-string v1, "ALManager"

    const-string v6, "apsLocation setAuthKey"

    invoke-static {v0, v1, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_9
    :try_start_e
    const-string v2, "ALManager"

    const-string v3, "apsLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-virtual {p1}, Lcom/loc/dn;->d()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_10
    const-string v1, "ALManager"

    const-string v6, "apsLocation setUmidToken"

    invoke-static {v0, v1, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_11
    invoke-virtual {p1}, Lcom/loc/dn;->d()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    :goto_a
    throw v0

    :catch_4
    move-exception v0

    :try_start_12
    const-string v1, "ALManager"

    const-string v6, "initApsBase"

    invoke-static {v0, v1, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :try_start_13
    const-string v4, "ALManager"

    const-string v7, "apsLocation:doFirstAddCache"

    invoke-static {v0, v4, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    :try_start_14
    const-string v4, "ALManager"

    const-string v7, "apsLocation:doFirstNetLocate"

    invoke-static {v0, v4, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "ALManager"

    const-string v7, "fixLastLocation"

    invoke-static {v2, v4, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_9
    move-exception v0

    const-string v2, "ALManager"

    const-string v4, "apsLocation:callback"

    invoke-static {v0, v2, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_a
    move-exception v0

    const-string v2, "ALManager"

    const-string v3, "apsLocation:doFirstNetLocate 2"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v0, v1

    goto :goto_8

    :catch_c
    move-exception v1

    goto :goto_a

    :cond_7
    move-object v0, v2

    goto/16 :goto_4

    :cond_8
    move v3, v4

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/loc/d;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "loc"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v2, "lastLocNb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v3, Lcom/loc/i;->b:Lcom/loc/ea;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/loc/d;->h:Lcom/loc/i;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/loc/d;->h:Lcom/loc/i;

    invoke-virtual {v1}, Lcom/loc/i;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/loc/en;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/loc/d;->h:Lcom/loc/i;

    invoke-virtual {v1, v0, v2}, Lcom/loc/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d;->h:Lcom/loc/i;

    invoke-virtual {v0}, Lcom/loc/i;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-object v1, Lcom/loc/i;->b:Lcom/loc/ea;

    invoke-virtual {v1}, Lcom/loc/ea;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "doSaveLastLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/loc/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/d;->k()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/loc/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/d;->E:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/loc/d;->F:Z

    return p0
.end method

.method static synthetic c(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->j()V

    return-void
.end method

.method static synthetic c(Lcom/loc/d;Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "h"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0}, Lcom/loc/d;->n()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "h"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "g"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/loc/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "doEnableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->k()V

    return-void
.end method

.method static synthetic d(Lcom/loc/d;Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "j"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/loc/d;->n()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "j"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "g"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/loc/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "doDisableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/loc/d;)V
    .locals 5

    :try_start_0
    sget-boolean v0, Lcom/loc/d;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/d;->r:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/loc/d;->I:Z

    if-nez v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/d;->D:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->I:Z

    new-instance v0, Lcom/loc/dn;

    invoke-direct {v0}, Lcom/loc/dn;-><init>()V

    invoke-direct {p0, v0}, Lcom/loc/d;->b(Lcom/loc/dn;)Lcom/loc/ds;

    move-result-object v1

    invoke-direct {p0}, Lcom/loc/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "0"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/loc/ds;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/loc/ds;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    :cond_1
    const-string v0, "1"

    :cond_2
    const-string v1, "optBundle"

    iget-object v3, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/loc/d;->C:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/loc/d;->l()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/loc/d;->r:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/loc/d;->B:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/loc/d;->w:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->w:Z

    invoke-direct {p0}, Lcom/loc/d;->m()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/loc/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->w:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v1}, Lcom/loc/g;->b()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "ALManager"

    const-string v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/loc/d;->l()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/loc/d;->w:Z

    const-string v1, "ALManager"

    const-string v2, "doLBSLocation reStartService"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/loc/d;->l()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static synthetic f(Lcom/loc/d;)V
    .locals 1

    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/loc/d;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/loc/d;)V
    .locals 3

    iget-object v1, p0, Lcom/loc/d;->c:Lcom/loc/g;

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    iput-object v0, v1, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, v1, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v0, v2, :cond_1

    iget-object v0, v1, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, v1, Lcom/loc/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-object v2, v1, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-object v2, v1, Lcom/loc/g;->o:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, v1, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-boolean v0, p0, Lcom/loc/d;->C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/d;->k()V

    invoke-direct {p0}, Lcom/loc/d;->j()V

    :cond_3
    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/loc/en;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1, v2}, Lcom/loc/en;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/en;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/d;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/d;->l:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/loc/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/d;->l:I

    iget v0, p0, Lcom/loc/d;->l:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/d;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/loc/d;->i:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    iget-object v4, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->l(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1\uff0c\u5e76\u4e14manifest\u4e2dservice\u6807\u7b7e\u662f\u5426\u914d\u7f6e\u5728application\u6807\u7b7e\u5185#1003"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :goto_0
    const-string v4, "loc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-virtual {v2, v0}, Lcom/loc/d$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ep;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x837

    invoke-static {v6, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return v0

    :cond_4
    :try_start_1
    const-string v4, "\u542f\u52a8ApsServcie\u5931\u8d25#1001"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ALManager"

    const-string v3, "checkAPSManager"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v1, 0x835

    invoke-static {v6, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private declared-synchronized j()V
    .locals 6

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v2, p0, Lcom/loc/d;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/loc/d;->C:Z

    sget-object v2, Lcom/loc/d$2;->a:[I

    iget-object v3, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3f9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    const/16 v0, 0x3f8

    :try_start_2
    invoke-direct {p0, v0}, Lcom/loc/d;->a(I)V

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3f7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGpsFirstTimeout()J

    move-result-wide v0

    :cond_2
    const/16 v2, 0x3f8

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private k()V
    .locals 3

    const/16 v0, 0x401

    :try_start_0
    invoke-direct {p0, v0}, Lcom/loc/d;->a(I)V

    iget-object v0, p0, Lcom/loc/d;->c:Lcom/loc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    :cond_0
    const/16 v0, 0x3f8

    invoke-direct {p0, v0}, Lcom/loc/d;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->C:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/d;->l:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private l()V
    .locals 6

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->j:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/d;->j:Landroid/os/Messenger;

    :cond_0
    invoke-direct {p0}, Lcom/loc/d;->n()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/d;->H:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ALManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private n()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/APSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    :cond_0
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    const-string v1, "b"

    iget-object v2, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    const-string v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/d;->k:Landroid/content/Intent;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ALManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "checkSelfPermission"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.permission.FOREGROUND_SERVICE"

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/loc/em;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "h"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x3ff

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "disableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/h;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/loc/h;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->a()V

    return-void
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "j"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x400

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "disableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/d;->B:Z

    return v0
.end method

.method public final b()V
    .locals 4

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ed

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    :cond_0
    const/16 v0, 0x3f3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->n:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/d;->h:Lcom/loc/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/d;->h:Lcom/loc/i;

    invoke-virtual {v1}, Lcom/loc/i;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ALManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->G:Lcom/loc/h;

    :cond_0
    const/16 v0, 0x3f1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final h()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v0, 0xc

    invoke-direct {p0, v0, v4}, Lcom/loc/d;->a(ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->g:Z

    iput-boolean v2, p0, Lcom/loc/d;->B:Z

    iput-boolean v2, p0, Lcom/loc/d;->r:Z

    invoke-direct {p0}, Lcom/loc/d;->k()V

    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->q:Lcom/loc/en;

    iget-object v1, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/en;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/en;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/d;->s:Lcom/loc/e;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/d;->s:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/d;->n()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/loc/d;->z:Z

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/loc/d;->d:Ljava/util/ArrayList;

    :cond_3
    iput-object v4, p0, Lcom/loc/d;->H:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/loc/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/loc/d$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->x:Lcom/loc/d$a;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/em;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    iput-object v4, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    iget-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/d;->b:Lcom/loc/d$c;

    invoke-virtual {v0, v4}, Lcom/loc/d$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/loc/d;->h:Lcom/loc/i;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/d;->h:Lcom/loc/i;

    invoke-virtual {v0}, Lcom/loc/i;->c()V

    iput-object v4, p0, Lcom/loc/d;->h:Lcom/loc/i;

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/d;->H:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/d;->A:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/d;->H:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    invoke-virtual {v0}, Lcom/loc/d$b;->quit()Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/loc/d;->m:Lcom/loc/d$b;

    invoke-virtual {v0}, Lcom/loc/d$b;->quit()Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
