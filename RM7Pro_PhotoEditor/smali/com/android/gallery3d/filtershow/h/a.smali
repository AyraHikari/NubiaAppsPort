.class public Lcom/android/gallery3d/filtershow/h/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/h/a$c;,
        Lcom/android/gallery3d/filtershow/h/a$b;
    }
.end annotation


# static fields
.field private static final f:Z

.field static g:Landroid/os/HandlerThread;

.field static h:Lcom/android/gallery3d/filtershow/h/a$c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Messenger;

.field private c:Z

.field public d:Z

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZTE_FEATURE_MINDSYNC_ANALYTICS"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->i(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/h/a;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    sput-object v0, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/h/a$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/h/a$a;-><init>(Lcom/android/gallery3d/filtershow/h/a;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/h/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/h/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/h/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/h/a;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/h/a;->b:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/h/a;->b:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/h/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/h/a;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/h/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/h/a;->c:Z

    return p1
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/h/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/h/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/h/a;->h()V

    return-void
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/h/a;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/h/a;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "P875N02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.analytics"

    const-string v3, "com.zte.analytics.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/h/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/h/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method

.method private static i(Ljava/lang/String;Z)Z
    .locals 7

    :try_start_0
    const-string v0, "com.zte.feature.Feature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke FeatureClass.getBoolean()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NubiaTrackManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static j()Lcom/android/gallery3d/filtershow/h/a;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/h/a$b;->a:Lcom/android/gallery3d/filtershow/h/a;

    return-object v0
.end method


# virtual methods
.method public k(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NubiaTrackManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/h/a;->a:Landroid/content/Context;

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "NubiaTrackEvent"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/gallery3d/filtershow/h/a$c;

    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/gallery3d/filtershow/h/a$c;-><init>(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/gallery3d/filtershow/h/a;->f:Z

    const-string v1, "NubiaTrackManager"

    const-string v2, "P875N02"

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, sendEvent return."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    if-nez v0, :cond_1

    const-string p1, "sTrackHandler is null , can not sendEvent"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "owner_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event_name"

    goto :goto_0

    :cond_2
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->h:Lcom/android/gallery3d/filtershow/h/a$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public m()V
    .locals 4

    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/h/a;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/h/a;->b:Landroid/os/Messenger;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/h/a;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/h/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/h/a;->d:Z

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/h/a;->a:Landroid/content/Context;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
