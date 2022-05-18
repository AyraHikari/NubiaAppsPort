.class public final enum Lcn/nubia/cloud/service/common/ModuleType;
.super Ljava/lang/Enum;
.source "ModuleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/cloud/service/common/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/service/common/ModuleType;

.field public static final enum SURFACE:Lcn/nubia/cloud/service/common/ModuleType;

.field public static final enum SYNC:Lcn/nubia/cloud/service/common/ModuleType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/service/common/ModuleType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/cloud/service/common/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleType;

    .line 6
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleType;

    const-string v1, "SURFACE"

    invoke-direct {v0, v1, v3, v3}, Lcn/nubia/cloud/service/common/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleType;->SURFACE:Lcn/nubia/cloud/service/common/ModuleType;

    .line 7
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleType;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v4, v4}, Lcn/nubia/cloud/service/common/ModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleType;->SYNC:Lcn/nubia/cloud/service/common/ModuleType;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/cloud/service/common/ModuleType;

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleType;->SURFACE:Lcn/nubia/cloud/service/common/ModuleType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleType;->SYNC:Lcn/nubia/cloud/service/common/ModuleType;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleType;->$VALUES:[Lcn/nubia/cloud/service/common/ModuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcn/nubia/cloud/service/common/ModuleType;->mValue:I

    .line 12
    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/service/common/ModuleType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 19
    invoke-static {}, Lcn/nubia/cloud/service/common/ModuleType;->values()[Lcn/nubia/cloud/service/common/ModuleType;

    move-result-object v0

    .local v0, "arr$":[Lcn/nubia/cloud/service/common/ModuleType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 20
    .local v3, "t":Lcn/nubia/cloud/service/common/ModuleType;
    iget v4, v3, Lcn/nubia/cloud/service/common/ModuleType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 22
    .end local v3    # "t":Lcn/nubia/cloud/service/common/ModuleType;
    :goto_1
    return-object v3

    .line 19
    .restart local v3    # "t":Lcn/nubia/cloud/service/common/ModuleType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    .end local v3    # "t":Lcn/nubia/cloud/service/common/ModuleType;
    :cond_1
    sget-object v3, Lcn/nubia/cloud/service/common/ModuleType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcn/nubia/cloud/service/common/ModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/service/common/ModuleType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/cloud/service/common/ModuleType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleType;->$VALUES:[Lcn/nubia/cloud/service/common/ModuleType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/service/common/ModuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/service/common/ModuleType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcn/nubia/cloud/service/common/ModuleType;->mValue:I

    return v0
.end method
