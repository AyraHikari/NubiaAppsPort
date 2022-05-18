.class public Lcom/hpplay/cybergarage/upnp/event/SubscriberList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getSubscriber(I)Lcom/hpplay/cybergarage/upnp/event/Subscriber;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    check-cast v0, Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    return-object v0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method
