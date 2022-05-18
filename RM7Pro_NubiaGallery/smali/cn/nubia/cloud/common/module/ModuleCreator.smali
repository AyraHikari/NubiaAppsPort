.class public Lcn/nubia/cloud/common/module/ModuleCreator;
.super Ljava/lang/Object;
.source "ModuleCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/cloud/common/module/Module;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cn$nubia$cloud$common$module$ModuleType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$cn$nubia$cloud$common$module$ModuleType()[I
    .locals 3

    .line 7
    sget-object v0, Lcn/nubia/cloud/common/module/ModuleCreator;->$SWITCH_TABLE$cn$nubia$cloud$common$module$ModuleType:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcn/nubia/cloud/common/module/ModuleType;->values()[Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/nubia/cloud/common/module/ModuleType;->SURFACE:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/module/ModuleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcn/nubia/cloud/common/module/ModuleType;->SYNC:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/module/ModuleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcn/nubia/cloud/common/module/ModuleType;->UNKNOWN:Lcn/nubia/cloud/common/module/ModuleType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/module/ModuleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcn/nubia/cloud/common/module/ModuleCreator;->$SWITCH_TABLE$cn$nubia$cloud$common$module$ModuleType:[I

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/common/module/Module;
    .locals 2

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/common/module/ModuleType;->valueOf(I)Lcn/nubia/cloud/common/module/ModuleType;

    move-result-object v0

    .line 12
    invoke-static {}, Lcn/nubia/cloud/common/module/ModuleCreator;->$SWITCH_TABLE$cn$nubia$cloud$common$module$ModuleType()[I

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/cloud/common/module/ModuleType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcn/nubia/cloud/common/module/SyncModule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/common/module/Module;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcn/nubia/cloud/common/module/SurfaceModule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/common/module/Module;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/module/ModuleCreator;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/common/module/Module;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/common/module/Module;
    .locals 0

    .line 26
    new-array p1, p1, [Lcn/nubia/cloud/common/module/Module;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/module/ModuleCreator;->newArray(I)[Lcn/nubia/cloud/common/module/Module;

    move-result-object p1

    return-object p1
.end method
