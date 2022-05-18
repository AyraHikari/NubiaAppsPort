.class public final enum Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;
.super Ljava/lang/Enum;
.source "OperationListEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/entities/OperationListEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpgradeRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum NEED_H5_JUMP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum NEED_LOGIN:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum NEED_PURCHASE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum NEED_VIP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum NORMAL:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum OTHER:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

.field public static final enum UNAVAILABLE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NORMAL:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->UNAVAILABLE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "NEED_LOGIN"

    invoke-direct {v0, v1, v5}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_LOGIN:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "NEED_VIP"

    invoke-direct {v0, v1, v6}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_VIP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "NEED_PURCHASE"

    invoke-direct {v0, v1, v7}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_PURCHASE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "NEED_H5_JUMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_H5_JUMP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->OTHER:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NORMAL:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->UNAVAILABLE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_LOGIN:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_VIP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_PURCHASE:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->NEED_H5_JUMP:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->OTHER:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->$VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->$VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    invoke-virtual {v0}, [Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    return-object v0
.end method
