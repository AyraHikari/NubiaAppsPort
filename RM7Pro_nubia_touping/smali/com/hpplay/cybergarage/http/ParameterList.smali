.class public Lcom/hpplay/cybergarage/http/ParameterList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public at(I)Lcom/hpplay/cybergarage/http/Parameter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/http/Parameter;

    return-object v0
.end method

.method public getParameter(I)Lcom/hpplay/cybergarage/http/Parameter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/http/Parameter;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/Parameter;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/ParameterList;->size()I

    move-result v3

    .line 37
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 38
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/http/ParameterList;->at(I)Lcom/hpplay/cybergarage/http/Parameter;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/ParameterList;->getParameter(Ljava/lang/String;)Lcom/hpplay/cybergarage/http/Parameter;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string v0, ""

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
