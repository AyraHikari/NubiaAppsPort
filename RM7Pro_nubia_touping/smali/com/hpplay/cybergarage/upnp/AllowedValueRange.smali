.class public Lcom/hpplay/cybergarage/upnp/AllowedValueRange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "allowedValueRange"

.field private static final MAXIMUM:Ljava/lang/String; = "maximum"

.field private static final MINIMUM:Ljava/lang/String; = "minimum"

.field private static final STEP:Ljava/lang/String; = "step"


# instance fields
.field private allowedValueRangeNode:Lcom/hpplay/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "allowedValueRange"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "allowedValueRange"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->setMaximum(Ljava/lang/String;)V

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->setMinimum(Ljava/lang/String;)V

    .line 60
    :cond_1
    if-eqz p3, :cond_2

    .line 61
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->setStep(Ljava/lang/String;)V

    .line 62
    :cond_2
    return-void
.end method

.method public static isAllowedValueRangeNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "allowedValueRange"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getMaximum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaximum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setMinimum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
