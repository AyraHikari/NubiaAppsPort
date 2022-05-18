.class public final enum Lcn/nubia/cloud/service/common/ModuleGroupType;
.super Ljava/lang/Enum;
.source "ModuleGroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/cloud/service/common/ModuleGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/service/common/ModuleGroupType;

.field public static final enum BACKUPS:Lcn/nubia/cloud/service/common/ModuleGroupType;

.field public static final enum CLOUDSERVICE:Lcn/nubia/cloud/service/common/ModuleGroupType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/service/common/ModuleGroupType;


# instance fields
.field private final mResId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleGroupType;

    const-string v1, "CLOUDSERVICE"

    const-string v2, "sync"

    sget v3, Lcn/nubia/cloud/service/common/R$string;->manage_common_cloud_sync:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcn/nubia/cloud/service/common/ModuleGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleGroupType;->CLOUDSERVICE:Lcn/nubia/cloud/service/common/ModuleGroupType;

    .line 10
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleGroupType;

    const-string v1, "BACKUPS"

    const-string v2, "backup"

    sget v3, Lcn/nubia/cloud/service/common/R$string;->manage_common_backup:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcn/nubia/cloud/service/common/ModuleGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleGroupType;->BACKUPS:Lcn/nubia/cloud/service/common/ModuleGroupType;

    .line 11
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleGroupType;

    const-string v1, "UNKNOWN"

    const-string v2, "other"

    sget v3, Lcn/nubia/cloud/service/common/R$string;->manage_common_other:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcn/nubia/cloud/service/common/ModuleGroupType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleGroupType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleGroupType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/cloud/service/common/ModuleGroupType;

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleGroupType;->CLOUDSERVICE:Lcn/nubia/cloud/service/common/ModuleGroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleGroupType;->BACKUPS:Lcn/nubia/cloud/service/common/ModuleGroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/cloud/service/common/ModuleGroupType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleGroupType;

    aput-object v1, v0, v6

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleGroupType;->$VALUES:[Lcn/nubia/cloud/service/common/ModuleGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcn/nubia/cloud/service/common/ModuleGroupType;->mValue:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcn/nubia/cloud/service/common/ModuleGroupType;->mResId:I

    .line 18
    return-void
.end method

.method public static groupValueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleGroupType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcn/nubia/cloud/service/common/ModuleGroupType;->values()[Lcn/nubia/cloud/service/common/ModuleGroupType;

    move-result-object v0

    .local v0, "arr$":[Lcn/nubia/cloud/service/common/ModuleGroupType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 36
    .local v3, "t":Lcn/nubia/cloud/service/common/ModuleGroupType;
    iget-object v4, v3, Lcn/nubia/cloud/service/common/ModuleGroupType;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    .end local v3    # "t":Lcn/nubia/cloud/service/common/ModuleGroupType;
    :goto_1
    return-object v3

    .line 35
    .restart local v3    # "t":Lcn/nubia/cloud/service/common/ModuleGroupType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "t":Lcn/nubia/cloud/service/common/ModuleGroupType;
    :cond_1
    sget-object v3, Lcn/nubia/cloud/service/common/ModuleGroupType;->UNKNOWN:Lcn/nubia/cloud/service/common/ModuleGroupType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleGroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcn/nubia/cloud/service/common/ModuleGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/service/common/ModuleGroupType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/cloud/service/common/ModuleGroupType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleGroupType;->$VALUES:[Lcn/nubia/cloud/service/common/ModuleGroupType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/service/common/ModuleGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/service/common/ModuleGroupType;

    return-object v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget v1, p0, Lcn/nubia/cloud/service/common/ModuleGroupType;->mResId:I

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/cloud/service/common/ModuleGroupType;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public intValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleGroupType;->mValue:Ljava/lang/String;

    return-object v0
.end method
