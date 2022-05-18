.class public abstract Lcn/nubia/cloud/common/module/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# static fields
.field public static final MODULE_DESCRIPTION:Ljava/lang/String; = "nubia.cloud.module.Description"

.field public static final MODULE_NAME:Ljava/lang/String; = "nubia.cloud.module.Name"

.field public static final MODULE_PERMISION:Ljava/lang/String; = "nubia.cloud.module.Permission"

.field public static final MODULE_TOKEN:Ljava/lang/String; = "nubia.cloud.module.Token"

.field public static final MODULE_TYPE:Ljava/lang/String; = "nubia.cloud.module.Type"

.field public static final MODULE_VISIBLE:Ljava/lang/String; = "nubia.cloud.module.Visible"

.field public static final PERMISION_CHECK_PASSWORD:Ljava/lang/String; = "password"

.field private static final PERMISION_NUBIAROM_ONLY:Ljava/lang/String; = "nubiaRomOnly"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsVisible:Z

.field private final mMetaData:Landroid/os/Bundle;

.field private final mName:Ljava/lang/String;

.field private final mPermission:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/nubia/cloud/common/module/ModulePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mToken:Ljava/lang/String;

.field private final mType:Lcn/nubia/cloud/common/module/ModuleType;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mType:Lcn/nubia/cloud/common/module/ModuleType;

    .line 36
    iput-object p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 37
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/ModuleInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mMetaData:Landroid/os/Bundle;

    const-string p2, "nubia.cloud.module.Name"

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mName:Ljava/lang/String;

    const-string p2, "nubia.cloud.module.Description"

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mDescription:Ljava/lang/String;

    const-string p2, "nubia.cloud.module.Visible"

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mIsVisible:Z

    const-string p2, "nubia.cloud.module.Token"

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mToken:Ljava/lang/String;

    .line 42
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mPermission:Ljava/util/Set;

    const-string p2, "nubia.cloud.module.Permission"

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/module/ModuleInfo;->initPermission(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/os/Parcel;)V
    .locals 1

    .line 47
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/common/module/ModuleInfo;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method private initPermission(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "password"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mPermission:Ljava/util/Set;

    invoke-static {v0}, Lcn/nubia/cloud/common/module/ModulePermission;->valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/module/ModulePermission;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "nubiaRomOnly"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mPermission:Ljava/util/Set;

    invoke-static {v0}, Lcn/nubia/cloud/common/module/ModulePermission;->valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/module/ModulePermission;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getComponentInfo()Landroid/content/pm/ComponentInfo;
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing ComponentInfo!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getModuleType()Lcn/nubia/cloud/common/module/ModuleType;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mType:Lcn/nubia/cloud/common/module/ModuleType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcn/nubia/cloud/common/module/ModulePermission;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mPermission:Ljava/util/Set;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mIsVisible:Z

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [moduleType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mType:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/common/module/ModuleInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
