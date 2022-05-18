.class public Lcn/nubia/camera/trackclinet/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/trackclinet/a$b;,
        Lcn/nubia/camera/trackclinet/a$a;
    }
.end annotation


# static fields
.field static a:Landroid/os/HandlerThread;

.field static b:Lcn/nubia/camera/trackclinet/a$b;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Messenger;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cn.nubia.owlsystem"

    .line 31
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->d:Ljava/lang/String;

    const-string v1, "cn.nubia.applearning.datacollection.DataCollectionService"

    .line 32
    iput-object v1, p0, Lcn/nubia/camera/trackclinet/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 55
    iput-boolean v2, p0, Lcn/nubia/camera/trackclinet/a;->i:Z

    const/4 v3, 0x1

    .line 57
    iput v3, p0, Lcn/nubia/camera/trackclinet/a;->j:I

    .line 58
    iput-boolean v2, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    .line 59
    iput-boolean v3, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    .line 87
    new-instance v4, Lcn/nubia/camera/trackclinet/a$1;

    invoke-direct {v4, p0}, Lcn/nubia/camera/trackclinet/a$1;-><init>(Lcn/nubia/camera/trackclinet/a;)V

    iput-object v4, p0, Lcn/nubia/camera/trackclinet/a;->m:Landroid/content/ServiceConnection;

    .line 62
    invoke-static {}, Lcn/nubia/camera/ba/d;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "com.zte.analytics"

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->d:Ljava/lang/String;

    const-string v0, "com.zte.analytics.datacollection.DataCollectionService"

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->e:Ljava/lang/String;

    const-string v0, "ZTE_FEATURE_MINDSYNC_ANALYTICS"

    .line 65
    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    const-string v0, "ZTETrackManager"

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_0
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->d:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcn/nubia/camera/trackclinet/a;->e:Ljava/lang/String;

    const-string v0, "NubiaTrackManager"

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    :goto_0
    const-string v0, "NubiaCameraTrackManager"

    const/4 v1, 0x2

    .line 73
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    .line 75
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcn/nubia/camera/trackclinet/a;->i:Z

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User BuildType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/trackclinet/a;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/trackclinet/a$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/trackclinet/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/trackclinet/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/trackclinet/a;->g:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a()Lcn/nubia/camera/trackclinet/a;
    .locals 1

    .line 80
    sget-object v0, Lcn/nubia/camera/trackclinet/a$a;->a:Lcn/nubia/camera/trackclinet/a;

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/trackclinet/a;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/trackclinet/a;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcn/nubia/camera/trackclinet/a;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 7

    :try_start_0
    const-string v0, "com.zte.feature.Feature"

    .line 383
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 384
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 386
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 388
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke FeatureClass.getBoolean()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private b()V
    .locals 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcn/nubia/camera/trackclinet/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/camera/trackclinet/a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->f:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    const-string v2, "bindService"

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/camera/trackclinet/a;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/trackclinet/a;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/camera/trackclinet/a;->i:Z

    return p0
.end method

.method private c()V
    .locals 2

    .line 194
    sget-object v0, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/trackclinet/a;->h:Z

    if-nez v1, :cond_0

    .line 196
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcn/nubia/camera/trackclinet/a;->g:Landroid/os/Messenger;

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcn/nubia/camera/trackclinet/a;->h:Z

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 200
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcn/nubia/camera/trackclinet/a;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/camera/trackclinet/a;->h:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/trackclinet/a;)Landroid/os/Messenger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/trackclinet/a;->g:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/trackclinet/a;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/trackclinet/a;->b()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/trackclinet/a;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/camera/trackclinet/a;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    if-nez v0, :cond_0

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS, init return"

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/trackclinet/a;->f:Landroid/content/Context;

    .line 172
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    if-nez p1, :cond_1

    .line 173
    new-instance p1, Landroid/os/HandlerThread;

    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    .line 175
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance p1, Lcn/nubia/camera/trackclinet/a$b;

    sget-object v0, Lcn/nubia/camera/trackclinet/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/trackclinet/a$b;-><init>(Lcn/nubia/camera/trackclinet/a;Landroid/os/Looper;)V

    sput-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    .line 178
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init success, PKG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; CLS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 332
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    if-nez v0, :cond_0

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, sendEvent return."

    .line 333
    invoke-direct {p0, p1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "pkgName"

    .line 336
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget p1, p0, Lcn/nubia/camera/trackclinet/a;->j:I

    const-string v0, "cam_track_version"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    iget-boolean p1, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcn/nubia/camera/trackclinet/a$b;->removeMessages(I)V

    .line 350
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 351
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 352
    sget-object p2, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 353
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    if-nez v0, :cond_0

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, sendEvent return."

    .line 217
    invoke-direct {p0, p1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget p1, p0, Lcn/nubia/camera/trackclinet/a;->j:I

    const-string v1, "cam_track_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "event"

    .line 227
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/trackclinet/a$b;->removeMessages(I)V

    .line 229
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 231
    sget-object v0, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 232
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 357
    iget-boolean v0, p0, Lcn/nubia/camera/trackclinet/a;->l:Z

    if-nez v0, :cond_0

    const-string p1, "ZTE_FEATURE_MINDSYNC_ANALYTICS is false, sendEvent return."

    .line 358
    invoke-direct {p0, p1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "package_name"

    .line 362
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget p1, p0, Lcn/nubia/camera/trackclinet/a;->j:I

    const-string v0, "cam_track_version"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    iget-boolean p1, p0, Lcn/nubia/camera/trackclinet/a;->k:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event_name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lcn/nubia/camera/trackclinet/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcn/nubia/camera/trackclinet/a$b;->removeMessages(I)V

    .line 375
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 376
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    sget-object p2, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessage(Landroid/os/Message;)Z

    .line 378
    sget-object p1, Lcn/nubia/camera/trackclinet/a;->b:Lcn/nubia/camera/trackclinet/a$b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/trackclinet/a$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/trackclinet/a$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
