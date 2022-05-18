.class public Lcn/nubia/cloud/common/module/SurfaceModule;
.super Lcn/nubia/cloud/common/module/Module;
.source "SurfaceModule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/common/module/SurfaceModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcn/nubia/cloud/common/module/SurfaceModule$1;

    invoke-direct {v0}, Lcn/nubia/cloud/common/module/SurfaceModule$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/common/module/SurfaceModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 13
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleType;->SURFACE:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/common/module/Module;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleType;->SURFACE:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-direct {p0, v0, p1}, Lcn/nubia/cloud/common/module/Module;-><init>(Lcn/nubia/cloud/common/module/ModuleType;Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/module/SurfaceModule;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string p2, "nubia.cloud.SurfaceAdapter"

    .line 27
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/common/module/Module;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
