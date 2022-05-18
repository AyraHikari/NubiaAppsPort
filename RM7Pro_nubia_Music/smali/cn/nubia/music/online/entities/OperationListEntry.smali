.class public Lcn/nubia/music/online/entities/OperationListEntry;
.super Ljava/lang/Object;
.source "OperationListEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/entities/OperationListEntry$Purpose;,
        Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;
    }
.end annotation


# instance fields
.field private purpose:I

.field private upgrade_role:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPurpose()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcn/nubia/music/online/entities/OperationListEntry;->purpose:I

    return v0
.end method

.method public getUpgrade_role()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/music/online/entities/OperationListEntry;->upgrade_role:I

    return v0
.end method

.method public setPurpose(I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcn/nubia/music/online/entities/OperationListEntry;->purpose:I

    .line 15
    return-void
.end method

.method public setUpgrade_role(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcn/nubia/music/online/entities/OperationListEntry;->upgrade_role:I

    .line 23
    return-void
.end method
