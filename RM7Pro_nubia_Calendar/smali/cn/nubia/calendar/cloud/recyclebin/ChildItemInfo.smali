.class public Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
.super Ljava/lang/Object;
.source "ChildItemInfo.java"


# instance fields
.field private mDeleteDate:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mServerId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mServerId"    # J
    .param p3, "mName"    # Ljava/lang/String;
    .param p4, "mDeleteDate"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mServerId:J

    .line 14
    iput-object p3, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getmDeleteDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmServerId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mServerId:J

    return-wide v0
.end method

.method public setmDeleteDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeleteDate"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->mDeleteDate:Ljava/lang/String;

    .line 25
    return-void
.end method
