.class public Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/devicemgr/repository/a;


# static fields
.field private static final a:Ljava/lang/String; = "LocalDeviceRepository"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/hpplay/sdk/source/devicemgr/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->b:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->e()V

    .line 28
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocalDeviceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/a/a$a;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Lcom/hpplay/sdk/source/browse/a/a$a;)V

    .line 47
    return-void
.end method

.method public varargs a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 4

    .prologue
    .line 62
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 63
    iget-object v3, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "LocalDeviceRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncDevices LocalDeviceHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/devicemgr/a/a;->a(Z)V

    goto :goto_0
.end method

.method public varargs b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/devicemgr/a/a;->c()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c:Lcom/hpplay/sdk/source/devicemgr/a/a;

    .line 88
    :cond_0
    return-void
.end method
