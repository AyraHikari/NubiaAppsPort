.class public Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;
.super Lcom/hpplay/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    .line 34
    return-void
.end method
