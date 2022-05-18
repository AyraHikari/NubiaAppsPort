.class public Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/a/a;


# static fields
.field private static final e:Ljava/lang/String; = "LelinkDeviceManagerImpl"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

.field private i:Lcom/hpplay/sdk/source/browse/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->f:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->g:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    iget-object v1, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->b()V

    .line 40
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/browse/a/a$a;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->a(Lcom/hpplay/sdk/source/browse/a/a$a;)V

    .line 35
    return-void
.end method

.method public varargs a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->a([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 45
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->c()V

    .line 55
    return-void
.end method

.method public varargs b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hpplay/sdk/source/devicemgr/impl/LelinkDeviceManagerImpl;->h:Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/devicemgr/repository/LocalDeviceRepository;->b([Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 50
    return-void
.end method
