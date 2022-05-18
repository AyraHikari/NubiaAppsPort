.class public Lcn/nubia/cloud/service/common/Module;
.super Lcn/nubia/cloud/service/common/ModuleInfo;
.source "Module.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/service/common/Module;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mModuleIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcn/nubia/cloud/service/common/ModuleCreator;

    invoke-direct {v0}, Lcn/nubia/cloud/service/common/ModuleCreator;-><init>()V

    sput-object v0, Lcn/nubia/cloud/service/common/Module;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/service/common/ModuleType;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "moduleType"    # Lcn/nubia/cloud/service/common/ModuleType;
    .param p2, "source"    # Landroid/os/Parcel;

    .prologue
    .line 22
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/service/common/ModuleConfig;

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/service/common/Module;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V
    .locals 1
    .param p1, "moduleType"    # Lcn/nubia/cloud/service/common/ModuleType;
    .param p2, "info"    # Lcn/nubia/cloud/service/common/ModuleConfig;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/service/common/ModuleInfo;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/service/common/Module;->mModuleIntent:Landroid/content/Intent;

    .line 18
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/Module;->init()V

    .line 19
    return-void
.end method


# virtual methods
.method public final createModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/service/common/ModuleCtrlHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ModuleCtrl:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/service/common/ModuleCtrlHandler",
            "<TModuleCtrl;>;)TModuleCtrl;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "handler":Lcn/nubia/cloud/service/common/ModuleCtrlHandler;, "Lcn/nubia/cloud/service/common/ModuleCtrlHandler<TModuleCtrl;>;"
    invoke-interface {p2, p1, p0}, Lcn/nubia/cloud/service/common/ModuleCtrlHandler;->handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 54
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v3

    .line 57
    :cond_1
    instance-of v4, p1, Lcn/nubia/cloud/service/common/Module;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 58
    check-cast v0, Lcn/nubia/cloud/service/common/Module;

    .line 59
    .local v0, "m":Lcn/nubia/cloud/service/common/Module;
    iget-object v4, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v2, v4, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    .line 60
    .local v2, "thisClassName":Ljava/lang/String;
    iget-object v4, v0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v1, v4, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    .line 61
    .local v1, "otherClassName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/Module;->getModuleType()Lcn/nubia/cloud/service/common/ModuleType;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/cloud/service/common/Module;->getModuleType()Lcn/nubia/cloud/service/common/ModuleType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    .end local v0    # "m":Lcn/nubia/cloud/service/common/Module;
    .end local v1    # "otherClassName":Ljava/lang/String;
    .end local v2    # "thisClassName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/service/common/Module;->mModuleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v2, v2, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/Module;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v0, v0, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/cloud/service/common/Module;->mModuleIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v1, v1, Lcn/nubia/cloud/service/common/ModuleConfig;->modulePkgName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v2, v2, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleClsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/service/common/Module;->mModuleIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/cloud/service/common/Module;->mModuleConfig:Lcn/nubia/cloud/service/common/ModuleConfig;

    iget-object v1, v1, Lcn/nubia/cloud/service/common/ModuleConfig;->moduleAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method protected onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/service/common/Module;->onStart(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/Module;->getModuleType()Lcn/nubia/cloud/service/common/ModuleType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/service/common/ModuleType;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/service/common/ModuleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    return-void
.end method
