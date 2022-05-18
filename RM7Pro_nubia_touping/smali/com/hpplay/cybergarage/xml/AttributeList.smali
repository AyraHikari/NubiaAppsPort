.class public Lcom/hpplay/cybergarage/xml/AttributeList;
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
.method public getAttribute(I)Lcom/hpplay/cybergarage/xml/Attribute;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/xml/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/xml/Attribute;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Attribute;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/AttributeList;->size()I

    move-result v3

    .line 33
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 34
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/xml/AttributeList;->getAttribute(I)Lcom/hpplay/cybergarage/xml/Attribute;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    .line 36
    goto :goto_0

    .line 33
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method
