.class public Lcn/nubia/cloud/service/common/SurfaceModule;
.super Lcn/nubia/cloud/service/common/Module;
.source "SurfaceModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/service/common/SurfaceModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcn/nubia/cloud/service/common/SurfaceModule$1;

    invoke-direct {v0}, Lcn/nubia/cloud/service/common/SurfaceModule$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/service/common/SurfaceModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 16
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleType;->SURFACE:Lcn/nubia/cloud/service/common/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/service/common/Module;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Landroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/service/common/ModuleConfig;)V
    .locals 1
    .param p1, "info"    # Lcn/nubia/cloud/service/common/ModuleConfig;

    .prologue
    .line 12
    sget-object v0, Lcn/nubia/cloud/service/common/ModuleType;->SURFACE:Lcn/nubia/cloud/service/common/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/service/common/Module;-><init>(Lcn/nubia/cloud/service/common/ModuleType;Lcn/nubia/cloud/service/common/ModuleConfig;)V

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SurfaceModule;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 23
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/service/common/Module;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    return-void
.end method
