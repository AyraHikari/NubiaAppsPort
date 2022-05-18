.class public Lcom/hpplay/cybergarage/upnp/ServiceList;
.super Ljava/util/Vector;
.source "SourceFile"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "serviceList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getService(I)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    check-cast v0, Lcom/hpplay/cybergarage/upnp/Service;

    return-object v0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method
