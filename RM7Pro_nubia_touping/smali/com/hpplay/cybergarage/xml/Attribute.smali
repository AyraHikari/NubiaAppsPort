.class public Lcom/hpplay/cybergarage/xml/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/xml/Attribute;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/xml/Attribute;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Attribute;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hpplay/cybergarage/xml/Attribute;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/xml/Attribute;->set(Lcom/hpplay/cybergarage/xml/Attribute;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/hpplay/cybergarage/xml/Attribute;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/xml/Attribute;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/cybergarage/xml/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hpplay/cybergarage/xml/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public set(Lcom/hpplay/cybergarage/xml/Attribute;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/xml/Attribute;->setName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hpplay/cybergarage/xml/Attribute;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/hpplay/cybergarage/xml/Attribute;->value:Ljava/lang/String;

    .line 54
    return-void
.end method
