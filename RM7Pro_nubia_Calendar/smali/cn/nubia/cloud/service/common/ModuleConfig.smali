.class public Lcn/nubia/cloud/service/common/ModuleConfig;
.super Landroid/content/pm/ComponentInfo;
.source "ModuleConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/service/common/ModuleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODULE_RES_CLS_NAME:Ljava/lang/String; = "nubia.cloud.module.ResClsName"

.field public static final MODULE_RES_PKG_NAME:Ljava/lang/String; = "nubia.cloud.module.ResPkgName"


# instance fields
.field private final mDescriptionRes:I

.field private final mLabelRes:I

.field private final mMetaData:Landroid/os/Bundle;

.field public final moduleAction:Ljava/lang/String;

.field public final moduleClsName:Ljava/lang/String;

.field public final modulePkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleConfig$1;

    invoke-direct {v0}, Lcn/nubia/cloud/service/common/ModuleConfig$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/service/common/ModuleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "resInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "moduleInfo"    # Landroid/content/pm/ComponentInfo;
    .param p3, "moduleAction"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    .line 60
    iget v0, p2, Landroid/content/pm/ComponentInfo;->labelRes:I

    iput v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mLabelRes:I

    .line 61
    iget v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mDescriptionRes:I

    .line 62
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    .line 63
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    .line 64
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 67
    :cond_0
    iput-object p3, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleAction:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    .line 92
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mLabelRes:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mDescriptionRes:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleAction:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleConfig;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 41
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "nubia.cloud.module.ResPkgName"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "resAppPkg":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "nubia.cloud.module.ResClsName"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "resAppCls":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 47
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 48
    invoke-static {v1}, Lcn/nubia/cloud/utils/ResolveInfoUtil;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    .line 49
    .local v4, "resInfo":Landroid/content/pm/ComponentInfo;
    new-instance v5, Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-direct {v5, v4, p1, p2}, Lcn/nubia/cloud/service/common/ModuleConfig;-><init>(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resAppCls":Ljava/lang/String;
    .end local v3    # "resAppPkg":Ljava/lang/String;
    .end local v4    # "resInfo":Landroid/content/pm/ComponentInfo;
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-direct {v5, p1, p1, p2}, Lcn/nubia/cloud/service/common/ModuleConfig;-><init>(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModuleConfig;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resAppPkg"    # Ljava/lang/String;
    .param p2, "resAppCls"    # Ljava/lang/String;
    .param p3, "moduleInfo"    # Landroid/content/pm/ComponentInfo;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 31
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lcn/nubia/cloud/utils/ResolveInfoUtil;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v2

    .line 33
    .local v2, "resInfo":Landroid/content/pm/ComponentInfo;
    new-instance v3, Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-direct {v3, v2, p3, p4}, Lcn/nubia/cloud/service/common/ModuleConfig;-><init>(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    .line 35
    .end local v2    # "resInfo":Landroid/content/pm/ComponentInfo;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "description":Ljava/lang/CharSequence;
    iget v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mDescriptionRes:I

    if-lez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mDescriptionRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_1
    return-object v1

    .line 148
    :cond_2
    iget v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->descriptionRes:I

    if-lez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->packageName:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->descriptionRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/service/common/ModuleConfig;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "label":Ljava/lang/CharSequence;
    iget v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mLabelRes:I

    if-lez v2, :cond_2

    .line 131
    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mLabelRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_1
    return-object v1

    .line 133
    :cond_2
    iget v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->labelRes:I

    if-lez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->packageName:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->labelRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    iget v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->mDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
