.class public Lcom/zte/statistics/sdk/offline/ActionManager;
.super Ljava/lang/Object;
.source "ActionManager.java"


# static fields
.field private static atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

.field private static pa:Lcom/zte/statistics/sdk/db/dao/PVdao;

.field private static utd:Lcom/zte/statistics/sdk/db/dao/UseTimesDao;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventNum()I
    .locals 1

    .line 43
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    .line 46
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->getCounts()I

    move-result v0

    return v0
.end method

.method public static increaseAppUse()V
    .locals 3

    .line 31
    new-instance v0, Lcom/zte/statistics/sdk/obj/UseTimesObj;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/obj/UseTimesObj;-><init>()V

    .line 32
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTimeInt()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/obj/UseTimesObj;->setTime(J)V

    .line 33
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->getInstance()Lcom/zte/statistics/sdk/offline/InfoRouter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->insert(Lcom/zte/statistics/sdk/obj/StatisObj;)Z

    return-void
.end method

.method public static insertEventToDB(Lcom/zte/statistics/sdk/obj/EventsObj;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    .line 52
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->atd:Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->insert(Lcom/zte/statistics/sdk/obj/EventsObj;)J

    return-void
.end method

.method public static insertUseTimesToDB(Lcom/zte/statistics/sdk/obj/UseTimesObj;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->utd:Lcom/zte/statistics/sdk/db/dao/UseTimesDao;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;-><init>()V

    sput-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->utd:Lcom/zte/statistics/sdk/db/dao/UseTimesDao;

    .line 40
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/ActionManager;->utd:Lcom/zte/statistics/sdk/db/dao/UseTimesDao;

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/db/dao/UseTimesDao;->increaseAppUse(Lcom/zte/statistics/sdk/obj/UseTimesObj;)J

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 60
    new-instance v0, Lcom/zte/statistics/sdk/obj/EventsObj;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/obj/EventsObj;-><init>()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/obj/EventsObj;->setTime(J)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/EventsObj;->setEvent(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/zte/statistics/sdk/obj/EventsObj;->setValue(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/zte/statistics/sdk/offline/ActionManager;->insertEventToDB(Lcom/zte/statistics/sdk/obj/EventsObj;)V

    return-void
.end method

.method public static onPause(Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/zte/statistics/sdk/obj/PvObj;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/obj/PvObj;-><init>()V

    .line 76
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/PvObj;->setActivity(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 77
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/PvObj;->setType(Z)V

    .line 78
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTimeLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/obj/PvObj;->setTime(J)V

    .line 79
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->getInstance()Lcom/zte/statistics/sdk/offline/InfoRouter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->insert(Lcom/zte/statistics/sdk/obj/StatisObj;)Z

    return-void
.end method

.method public static onResume(Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/zte/statistics/sdk/obj/PvObj;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/obj/PvObj;-><init>()V

    .line 84
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/PvObj;->setActivity(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 85
    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/obj/PvObj;->setType(Z)V

    .line 86
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->offsetTimeLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/obj/PvObj;->setTime(J)V

    .line 87
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->getInstance()Lcom/zte/statistics/sdk/offline/InfoRouter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->insert(Lcom/zte/statistics/sdk/obj/StatisObj;)Z

    return-void
.end method
