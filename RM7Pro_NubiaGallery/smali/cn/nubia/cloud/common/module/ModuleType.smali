.class public final enum Lcn/nubia/cloud/common/module/ModuleType;
.super Ljava/lang/Enum;
.source "ModuleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/common/module/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModuleType;

.field public static final enum SURFACE:Lcn/nubia/cloud/common/module/ModuleType;

.field public static final enum SYNC:Lcn/nubia/cloud/common/module/ModuleType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/common/module/ModuleType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcn/nubia/cloud/common/module/ModuleType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/common/module/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/common/module/ModuleType;->UNKNOWN:Lcn/nubia/cloud/common/module/ModuleType;

    .line 6
    new-instance v1, Lcn/nubia/cloud/common/module/ModuleType;

    const-string v3, "SURFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/cloud/common/module/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/cloud/common/module/ModuleType;->SURFACE:Lcn/nubia/cloud/common/module/ModuleType;

    .line 7
    new-instance v3, Lcn/nubia/cloud/common/module/ModuleType;

    const-string v5, "SYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/cloud/common/module/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/cloud/common/module/ModuleType;->SYNC:Lcn/nubia/cloud/common/module/ModuleType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/cloud/common/module/ModuleType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/nubia/cloud/common/module/ModuleType;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcn/nubia/cloud/common/module/ModuleType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/common/module/ModuleType;
    .locals 5

    .line 19
    invoke-static {}, Lcn/nubia/cloud/common/module/ModuleType;->values()[Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 22
    sget-object p0, Lcn/nubia/cloud/common/module/ModuleType;->UNKNOWN:Lcn/nubia/cloud/common/module/ModuleType;

    return-object p0

    .line 19
    :cond_0
    aget-object v3, v0, v2

    .line 20
    iget v4, v3, Lcn/nubia/cloud/common/module/ModuleType;->mValue:I

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/module/ModuleType;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/cloud/common/module/ModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/common/module/ModuleType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/common/module/ModuleType;
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleType;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModuleType;

    array-length v1, v0

    new-array v2, v1, [Lcn/nubia/cloud/common/module/ModuleType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcn/nubia/cloud/common/module/ModuleType;->mValue:I

    return v0
.end method
