.class public Lcom/hpplay/cybergarage/http/Parameter;
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

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->value:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/Parameter;->setName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/http/Parameter;->setValue(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/Parameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/Parameter;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/Parameter;->value:Ljava/lang/String;

    .line 48
    return-void
.end method
