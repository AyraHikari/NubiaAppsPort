.class Lcn/nubia/cloud/common/module/SurfaceModule$1;
.super Ljava/lang/Object;
.source "SurfaceModule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/module/SurfaceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/cloud/common/module/SurfaceModule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/common/module/SurfaceModule;
    .locals 1

    .line 37
    new-instance v0, Lcn/nubia/cloud/common/module/SurfaceModule;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/module/SurfaceModule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/module/SurfaceModule$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/common/module/SurfaceModule;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/common/module/SurfaceModule;
    .locals 0

    .line 41
    new-array p1, p1, [Lcn/nubia/cloud/common/module/SurfaceModule;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/module/SurfaceModule$1;->newArray(I)[Lcn/nubia/cloud/common/module/SurfaceModule;

    move-result-object p1

    return-object p1
.end method
