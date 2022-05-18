.class public Lcom/hpplay/sdk/source/browse/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/impl/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LelinkDeviceManager"

.field private static final b:Ljava/lang/String; = "com.hpplay.sdk.source.devicemgr.impl.LelinkDeviceManagerImpl"


# instance fields
.field private c:Z

.field private d:Lcom/hpplay/sdk/source/browse/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/browse/impl/a$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/impl/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/hpplay/sdk/source/browse/impl/a;
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/hpplay/sdk/source/browse/impl/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/browse/impl/a$a;->a()Lcom/hpplay/sdk/source/browse/impl/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "LelinkDeviceManager"

    const-string v1, "loadLelinkDeivceManager is initialized"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->c:Z

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p1}, Lcom/hpplay/sdk/source/b/a;->d(Landroid/content/Context;)Lcom/hpplay/sdk/source/browse/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "LelinkDeviceManager"

    const-string v1, "loadLelinkDeivceManager error:isAuthSuccess is false"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/a/a$a;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/a/a;->a(Lcom/hpplay/sdk/source/browse/a/a$a;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "LelinkDeviceManager"

    const-string v1, "setListener mLelinkDeviceManager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "LelinkDeviceManager"

    const-string v1, "addDevices"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/a/a;->a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "LelinkDeviceManager"

    const-string v1, "addDevices mLelinkDeviceManager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->c:Z

    .line 47
    return-void
.end method

.method public varargs b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "LelinkDeviceManager"

    const-string v1, "deleteDevices"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/a/a;->b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "LelinkDeviceManager"

    const-string v1, "deleteDevices mLelinkDeviceManager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "LelinkDeviceManager"

    const-string v1, "syncDevices"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/a;->d:Lcom/hpplay/sdk/source/browse/a/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/a/a;->a()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "LelinkDeviceManager"

    const-string v1, "syncDevices mLelinkDeviceManager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
