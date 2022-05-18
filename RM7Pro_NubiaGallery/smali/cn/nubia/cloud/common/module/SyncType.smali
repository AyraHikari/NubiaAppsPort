.class public final enum Lcn/nubia/cloud/common/module/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/common/module/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALENDAR:Lcn/nubia/cloud/common/module/SyncType;

.field public static final enum CALL_LOG:Lcn/nubia/cloud/common/module/SyncType;

.field public static final enum CONTACTS:Lcn/nubia/cloud/common/module/SyncType;

.field private static final synthetic ENUM$VALUES:[Lcn/nubia/cloud/common/module/SyncType;

.field public static final enum FILE:Lcn/nubia/cloud/common/module/SyncType;

.field public static final enum NOTEPAD:Lcn/nubia/cloud/common/module/SyncType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/common/module/SyncType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    new-instance v0, Lcn/nubia/cloud/common/module/SyncType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/common/module/SyncType;->UNKNOWN:Lcn/nubia/cloud/common/module/SyncType;

    .line 6
    new-instance v1, Lcn/nubia/cloud/common/module/SyncType;

    const-string v3, "CONTACTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/cloud/common/module/SyncType;->CONTACTS:Lcn/nubia/cloud/common/module/SyncType;

    .line 7
    new-instance v3, Lcn/nubia/cloud/common/module/SyncType;

    const-string v5, "CALL_LOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/cloud/common/module/SyncType;->CALL_LOG:Lcn/nubia/cloud/common/module/SyncType;

    .line 8
    new-instance v5, Lcn/nubia/cloud/common/module/SyncType;

    const-string v7, "CALENDAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/cloud/common/module/SyncType;->CALENDAR:Lcn/nubia/cloud/common/module/SyncType;

    .line 9
    new-instance v7, Lcn/nubia/cloud/common/module/SyncType;

    const-string v9, "NOTEPAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/cloud/common/module/SyncType;->NOTEPAD:Lcn/nubia/cloud/common/module/SyncType;

    .line 10
    new-instance v9, Lcn/nubia/cloud/common/module/SyncType;

    const-string v11, "FILE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcn/nubia/cloud/common/module/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/nubia/cloud/common/module/SyncType;->FILE:Lcn/nubia/cloud/common/module/SyncType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/nubia/cloud/common/module/SyncType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 4
    sput-object v11, Lcn/nubia/cloud/common/module/SyncType;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcn/nubia/cloud/common/module/SyncType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/common/module/SyncType;
    .locals 5

    .line 22
    invoke-static {}, Lcn/nubia/cloud/common/module/SyncType;->values()[Lcn/nubia/cloud/common/module/SyncType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 27
    sget-object p0, Lcn/nubia/cloud/common/module/SyncType;->UNKNOWN:Lcn/nubia/cloud/common/module/SyncType;

    return-object p0

    .line 22
    :cond_0
    aget-object v3, v0, v2

    .line 23
    iget v4, v3, Lcn/nubia/cloud/common/module/SyncType;->mValue:I

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/module/SyncType;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/cloud/common/module/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/common/module/SyncType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/common/module/SyncType;
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/cloud/common/module/SyncType;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/SyncType;

    array-length v1, v0

    new-array v2, v1, [Lcn/nubia/cloud/common/module/SyncType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcn/nubia/cloud/common/module/SyncType;->mValue:I

    return v0
.end method
