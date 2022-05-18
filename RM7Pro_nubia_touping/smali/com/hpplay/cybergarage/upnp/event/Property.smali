.class public Lcom/hpplay/cybergarage/upnp/event/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string p1, ""

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string p1, ""

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/event/Property;->value:Ljava/lang/String;

    .line 62
    return-void
.end method
