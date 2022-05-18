.class public Lcom/zte/statistics/sdk/obj/EventsObj;
.super Lcom/zte/statistics/sdk/obj/StatisObj;
.source "EventsObj.java"


# instance fields
.field private event:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/StatisObj;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->event:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->event:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->event:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/EventsObj;->value:Ljava/lang/String;

    return-void
.end method
