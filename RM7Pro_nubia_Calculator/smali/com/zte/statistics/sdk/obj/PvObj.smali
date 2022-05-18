.class public Lcom/zte/statistics/sdk/obj/PvObj;
.super Lcom/zte/statistics/sdk/obj/StatisObj;
.source "PvObj.java"


# instance fields
.field private activity:Ljava/lang/String;

.field private type:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/StatisObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/PvObj;->activity:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/zte/statistics/sdk/obj/PvObj;->type:Z

    return p0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/PvObj;->activity:Ljava/lang/String;

    return-void
.end method

.method public setType(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/zte/statistics/sdk/obj/PvObj;->type:Z

    return-void
.end method
