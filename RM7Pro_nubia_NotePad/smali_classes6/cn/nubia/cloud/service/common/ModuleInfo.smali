.class public abstract Lcn/nubia/cloud/service/common/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final DATA:Ljava/lang/String; = "data"

.field private static final MODULE_CONDITION:Ljava/lang/String; = "nubia.cloud.module.AttachNoCondition"

.field private static final MODULE_GROUP:Ljava/lang/String; = "nubia.cloud.module.GroupType"

.field public static final MODULE_PERMISION:Ljava/lang/String; = "nubia.cloud.module.Permission"

.field public static final MODULE_TOKEN:Ljava/lang/String; = "nubia.cloud.module.Token"

.field private static final MODULE_TRENT:Ljava/lang/String; = "nubia.cloud.module.TrendType"

.field public static final MODULE_TYPE:Ljava/lang/String; = "nubia.cloud.module.Type"

.field public static final MODULE_VISIBLE:Ljava/lang/String; = "nubia.cloud.module.Visible"


# instance fields
.field mAttachNoCondition:Z

.field mDescription:Ljava/lang/String;

.field mGroupType:Lcn/nubia/cloud/service/common/ModuleGroupType;

.field final mIsVisible:Z

.field final mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

.field mName:Ljava/lang/String;

.field final mPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcn/nubia/cloud/service/common/ModulePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mToken:Ljava/lang/String;

.field mTrentType:Ljava/lang/String;

.field final mType:Lcn/nubia/cloud/service/common/ModuleType;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V
    .locals 4
    .param p1, "moduleType"    # Lcn/nubia/cloud/service/common/ModuleType;
    .param p2, "config"    # Lcn/nubia/cloud/service/common/ModuleConfig;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mType:Lcn/nubia/cloud/service/common/ModuleType;

    .line 37
    iput-object p2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.Visible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mIsVisible:Z

    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.Token"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v3, v3, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v3, v3, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mToken:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.GroupType"

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/service/common/ModuleGroupType;->groupValueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleGroupType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mGroupType:Lcn/nubia/cloud/service/common/ModuleGroupType;

    .line 43
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.AttachNoCondition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mAttachNoCondition:Z

    .line 44
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.TrendType"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mTrentType:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mPermission:Ljava/util/Set;

    .line 46
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    const-string v1, "nubia.cloud.module.Permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModuleConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/cloud/service/common/ModuleInfo;->initPermission(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private initPermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    invoke-static {}, Lcn/nubia/cloud/service/common/ModulePermission;->values()[Lcn/nubia/cloud/service/common/ModulePermission;

    move-result-object v0

    .local v0, "arr$":[Lcn/nubia/cloud/service/common/ModulePermission;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 52
    .local v3, "per":Lcn/nubia/cloud/service/common/ModulePermission;
    invoke-virtual {v3}, Lcn/nubia/cloud/service/common/ModulePermission;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    iget-object v4, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mPermission:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "arr$":[Lcn/nubia/cloud/service/common/ModulePermission;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "per":Lcn/nubia/cloud/service/common/ModulePermission;
    :cond_1
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcn/nubia/cloud/service/common/ModuleGroupType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mGroupType:Lcn/nubia/cloud/service/common/ModuleGroupType;

    return-object v0
.end method

.method public getModuleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v0, v0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getModulePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v0, v0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Lcn/nubia/cloud/service/common/ModuleType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mType:Lcn/nubia/cloud/service/common/ModuleType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcn/nubia/cloud/service/common/ModulePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mPermission:Ljava/util/Set;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTrentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mTrentType:Ljava/lang/String;

    return-object v0
.end method

.method public isAttachNoCondition()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mAttachNoCondition:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mIsVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onRefreshInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public final refreshLocalConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v1, v0}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v1, v0}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mDescription:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/service/common/ModuleInfo;->onRefreshInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "sBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [moduleType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mType:Lcn/nubia/cloud/service/common/ModuleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ",mToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ",mDescription:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ",mGroupType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mGroupType:Lcn/nubia/cloud/service/common/ModuleGroupType;

    invoke-virtual {v2}, Lcn/nubia/cloud/service/common/ModuleGroupType;->intValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ",mAttachNoCondition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mAttachNoCondition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ",mTrentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mTrentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleInfo;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/service/common/ModuleConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    return-void
.end method
