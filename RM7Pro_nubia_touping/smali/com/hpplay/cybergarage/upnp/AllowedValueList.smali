.class public Lcom/hpplay/cybergarage/upnp/AllowedValueList;
.super Ljava/util/Vector;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "allowedValueList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 38
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    new-instance v1, Lcom/hpplay/cybergarage/upnp/AllowedValue;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/upnp/AllowedValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowedValue(I)Lcom/hpplay/cybergarage/upnp/AllowedValue;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/AllowedValue;

    return-object v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/AllowedValue;

    .line 56
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/AllowedValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
