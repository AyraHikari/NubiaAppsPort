.class public Lcn/nubia/cloud/common/module/Module;
.super Lcn/nubia/cloud/common/module/ModuleInfo;
.source "Module.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/common/module/Module;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mModuleIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcn/nubia/cloud/common/module/ModuleCreator;

    invoke-direct {v0}, Lcn/nubia/cloud/common/module/ModuleCreator;-><init>()V

    sput-object v0, Lcn/nubia/cloud/common/module/Module;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/common/module/ModuleInfo;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    .line 21
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/module/Module;->mModuleIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/common/module/ModuleInfo;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    .line 27
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/module/Module;->mModuleIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final createModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/common/module/ModuleCtrlHandler;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ModuleCtrl:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/common/module/ModuleCtrlHandler<",
            "TModuleCtrl;>;)TModuleCtrl;"
        }
    .end annotation

    .line 85
    invoke-interface {p2, p1, p0}, Lcn/nubia/cloud/common/module/ModuleCtrlHandler;->handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcn/nubia/cloud/common/module/Module;

    if-eqz v1, :cond_1

    .line 60
    check-cast p1, Lcn/nubia/cloud/common/module/Module;

    .line 61
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getModuleType()Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/cloud/common/module/Module;->getModuleType()Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object p1

    if-ne v3, p1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/common/module/Module;->mModuleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public initLocalConfig(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public start(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/module/Module;->onStart(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/Module;->getModuleType()Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/common/module/ModuleType;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/common/module/ModuleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
