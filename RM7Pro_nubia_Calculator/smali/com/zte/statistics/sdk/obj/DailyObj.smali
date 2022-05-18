.class public Lcom/zte/statistics/sdk/obj/DailyObj;
.super Lcom/zte/statistics/sdk/obj/StatisObj;
.source "DailyObj.java"


# instance fields
.field private day:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/StatisObj;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/zte/statistics/sdk/obj/DailyObj;->day:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/DailyObj;->day:Ljava/lang/String;

    return-object p0
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/DailyObj;->day:Ljava/lang/String;

    return-void
.end method
