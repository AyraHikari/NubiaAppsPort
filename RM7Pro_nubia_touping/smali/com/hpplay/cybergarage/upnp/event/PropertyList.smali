.class public Lcom/hpplay/cybergarage/upnp/event/PropertyList;
.super Ljava/util/Vector;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "PropertyList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getProperty(I)Lcom/hpplay/cybergarage/upnp/event/Property;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/PropertyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/event/Property;

    return-object v0
.end method
