.class public Lcom/hpplay/sdk/source/player/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/player/a/c;


# static fields
.field public static final a:Ljava/lang/String; = "duration"

.field public static final b:Ljava/lang/String; = "position"

.field private static final c:Ljava/lang/String; = "MultiPointController"

.field private static final d:Ljava/lang/String; = "NOT_IMPLEMENTED"


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/hpplay/sdk/source/player/a/e;->a()Lcom/hpplay/sdk/source/player/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/a/e;->b()V

    .line 382
    return-void
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/hpplay/sdk/source/player/a/e;->a()Lcom/hpplay/sdk/source/player/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a/e;->a(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 355
    return-void
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Service;->getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 79
    const-string v3, "MultiPointController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionList-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ActionList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "Play"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 84
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 85
    const-string v0, "Speed"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 278
    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    const-string v2, "SetVolume"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_0

    .line 287
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "DesiredVolume"

    invoke-virtual {v1, v0, p2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 149
    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const-string v2, "Seek"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_0

    .line 157
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "Unit"

    const-string v2, "REL_TIME"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "Target"

    invoke-virtual {v1, v0, p2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    const-string v0, "Unit"

    const-string v2, "ABS_TIME"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "Target"

    invoke-virtual {v1, v0, p2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 30
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Service;->getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 35
    const-string v3, "MultiPointController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionList-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ActionList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "SetAVTransportURI"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 41
    const-string v3, "Play"

    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    new-instance v3, Lcom/hpplay/sdk/source/player/a/d$1;

    invoke-direct {v3, p0}, Lcom/hpplay/sdk/source/player/a/d$1;-><init>(Lcom/hpplay/sdk/source/player/a/d;)V

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setResponseCallbackLisener(Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;)V

    .line 55
    const-string v3, "InstanceID"

    invoke-virtual {v2, v3, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 56
    const-string v3, "CurrentURI"

    invoke-virtual {v2, v3, p2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "CurrentURIMetaData"

    invoke-virtual {v2, v3, p3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Lcom/hpplay/sdk/source/player/a/d$2;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/a/d$2;-><init>(Lcom/hpplay/sdk/source/player/a/d;)V

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setResponseCallbackLisener(Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;)V

    .line 67
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 68
    const-string v0, "Speed"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v2, "GetTransportInfo"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 101
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v0, "CurrentTransportState"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/hpplay/sdk/source/player/a/e;->a()Lcom/hpplay/sdk/source/player/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a/e;->b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 363
    return-void
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 244
    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    const-string v2, "SetMute"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    .line 252
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "DesiredMute"

    invoke-virtual {v1, v0, p2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/hpplay/cybergarage/upnp/Device;)I
    .locals 2

    .prologue
    .line 130
    const-string v0, "MinValue"

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/player/a/d;->c(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const-string v2, "GetVolumeDBRange"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    .line 119
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "Channel"

    const-string v3, "Master"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1, p2}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/hpplay/cybergarage/upnp/Device;)I
    .locals 2

    .prologue
    .line 139
    const-string v0, "MaxValue"

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/player/a/d;->c(Lcom/hpplay/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/16 v0, 0x64

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/cybergarage/upnp/Device;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 176
    const-string v0, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v6

    .line 177
    const-string v7, "MultiPointController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " start get positionInfo "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-nez v6, :cond_1

    move-object v0, v3

    .line 216
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    .line 181
    :cond_1
    const-string v0, "GetPositionInfo"

    invoke-virtual {v6, v0}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v0

    .line 182
    const-string v6, "MultiPointController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action is null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-nez v0, :cond_3

    move-object v0, v3

    .line 184
    goto :goto_1

    :cond_2
    move v1, v2

    .line 182
    goto :goto_2

    .line 186
    :cond_3
    const-string v1, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v1

    .line 188
    const-string v2, "MultiPointController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uis get successful "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v1, :cond_a

    .line 190
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v1, "AbsTime"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    const-string v1, "RelTime"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, "TrackDuration"

    invoke-virtual {v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    const-string v0, "MultiPointController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " position is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "NOT_IMPLEMENTED"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    :cond_4
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->formatToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 200
    const-string v2, "MultiPointController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use reltime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_5
    :goto_3
    const-string v2, "MultiPointController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlna call back time : position :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TrackDuration:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v8}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->formatToMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 212
    const-string v7, "position"

    cmp-long v2, v0, v4

    if-lez v2, :cond_8

    move-wide v2, v4

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v2, "duration"

    cmp-long v3, v0, v4

    if-lez v3, :cond_9

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 214
    goto/16 :goto_1

    .line 201
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "NOT_IMPLEMENTED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 202
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->formatToMillis(Ljava/lang/String;)J

    move-result-wide v2

    .line 203
    invoke-static {v7}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->formatToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 204
    cmp-long v9, v0, v4

    if-lez v9, :cond_7

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 206
    :cond_7
    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    move-wide v0, v2

    .line 207
    goto :goto_3

    :cond_8
    move-wide v2, v0

    .line 212
    goto :goto_4

    :cond_9
    move-wide v0, v4

    .line 213
    goto :goto_5

    :cond_a
    move-object v0, v3

    .line 216
    goto/16 :goto_1

    :cond_b
    move-wide v0, v4

    goto :goto_3
.end method

.method public f(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 223
    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    const-string v2, "GetMediaInfo"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_0

    .line 232
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v0, "MediaDuration"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Lcom/hpplay/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 261
    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const-string v2, "GetMute"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_0

    .line 269
    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    .line 272
    const-string v0, "CurrentMute"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h(Lcom/hpplay/cybergarage/upnp/Device;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 296
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 297
    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const-string v2, "GetVolume"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_0

    .line 305
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "Channel"

    const-string v3, "Master"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const-string v0, "CurrentVolume"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public i(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 319
    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const-string v2, "Stop"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 327
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 328
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public j(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 335
    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const-string v2, "Pause"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_0

    .line 342
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 343
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->postControlAction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public k(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/hpplay/sdk/source/player/a/e;->a()Lcom/hpplay/sdk/source/player/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/player/a/e;->a(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method
