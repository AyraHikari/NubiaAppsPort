.class public final enum Lcn/nubia/cloud/storage/common/StorageEngineType;
.super Ljava/lang/Enum;
.source "StorageEngineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/storage/common/StorageEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/storage/common/StorageEngineType;

.field public static final enum ALI_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

.field public static final enum BAIDU_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

.field public static final enum NUBIA_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

.field public static final enum QINIU_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/storage/common/StorageEngineType;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcn/nubia/cloud/storage/common/StorageEngineType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/nubia/cloud/storage/common/StorageEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/nubia/cloud/storage/common/StorageEngineType;->UNKNOWN:Lcn/nubia/cloud/storage/common/StorageEngineType;

    .line 5
    new-instance v1, Lcn/nubia/cloud/storage/common/StorageEngineType;

    const-string v3, "NUBIA_PCS"

    const/4 v4, 0x1

    const-string v5, "nubia.cloud.action.NubiaPCSEngine"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/nubia/cloud/storage/common/StorageEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/nubia/cloud/storage/common/StorageEngineType;->NUBIA_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

    .line 6
    new-instance v3, Lcn/nubia/cloud/storage/common/StorageEngineType;

    const-string v5, "BAIDU_PCS"

    const/4 v6, 0x2

    const-string v7, "nubia.cloud.action.BaiduPCSEngine"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/nubia/cloud/storage/common/StorageEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/nubia/cloud/storage/common/StorageEngineType;->BAIDU_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

    .line 7
    new-instance v5, Lcn/nubia/cloud/storage/common/StorageEngineType;

    const-string v7, "QINIU_PCS"

    const/4 v8, 0x3

    const-string v9, "nubia.cloud.action.QiNiuPCSEngine"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/nubia/cloud/storage/common/StorageEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/nubia/cloud/storage/common/StorageEngineType;->QINIU_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

    .line 8
    new-instance v7, Lcn/nubia/cloud/storage/common/StorageEngineType;

    const-string v9, "ALI_PCS"

    const/4 v10, 0x4

    const-string v11, "nubia.cloud.action.ALiPCSEngine"

    invoke-direct {v7, v9, v10, v10, v11}, Lcn/nubia/cloud/storage/common/StorageEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/nubia/cloud/storage/common/StorageEngineType;->ALI_PCS:Lcn/nubia/cloud/storage/common/StorageEngineType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/nubia/cloud/storage/common/StorageEngineType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcn/nubia/cloud/storage/common/StorageEngineType;->$VALUES:[Lcn/nubia/cloud/storage/common/StorageEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->mValue:I

    .line 13
    iput-object p4, p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcn/nubia/cloud/storage/common/StorageEngineType;
    .locals 5

    .line 25
    invoke-static {}, Lcn/nubia/cloud/storage/common/StorageEngineType;->values()[Lcn/nubia/cloud/storage/common/StorageEngineType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lcn/nubia/cloud/storage/common/StorageEngineType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->UNKNOWN:Lcn/nubia/cloud/storage/common/StorageEngineType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/StorageEngineType;
    .locals 1

    .line 3
    const-class v0, Lcn/nubia/cloud/storage/common/StorageEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/storage/common/StorageEngineType;

    return-object p0
.end method

.method public static valueOfAction(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/StorageEngineType;
    .locals 5

    .line 33
    invoke-static {}, Lcn/nubia/cloud/storage/common/StorageEngineType;->values()[Lcn/nubia/cloud/storage/common/StorageEngineType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz p0, :cond_0

    .line 34
    iget-object v4, v3, Lcn/nubia/cloud/storage/common/StorageEngineType;->mAction:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->UNKNOWN:Lcn/nubia/cloud/storage/common/StorageEngineType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/storage/common/StorageEngineType;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/cloud/storage/common/StorageEngineType;->$VALUES:[Lcn/nubia/cloud/storage/common/StorageEngineType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/storage/common/StorageEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/storage/common/StorageEngineType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcn/nubia/cloud/storage/common/StorageEngineType;->mValue:I

    return v0
.end method
