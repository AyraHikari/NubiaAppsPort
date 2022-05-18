.class Lcom/hpplay/sdk/source/browse/handler/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/handler/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CyberDeviceChangeListener"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/handler/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/browse/handler/b;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b$a;->b:Ljava/lang/ref/WeakReference;

    .line 124
    return-void
.end method


# virtual methods
.method public deviceAdded(ILcom/hpplay/cybergarage/upnp/Device;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/handler/b;

    .line 130
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 131
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;->deviceAdded(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 133
    :cond_0
    return-void
.end method

.method public deviceAdded(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 3

    .prologue
    .line 137
    const-string v0, "CyberDeviceChangeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceAdded -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/handler/b;

    .line 139
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;->deviceAdded(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 142
    :cond_0
    return-void
.end method

.method public deviceRemoved(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 3

    .prologue
    .line 146
    const-string v0, "CyberDeviceChangeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceRemoved -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/handler/b;

    .line 148
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;->deviceRemoved(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 151
    :cond_0
    return-void
.end method
