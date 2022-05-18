.class public Lcn/nubia/cloud/service/common/ModuleCreator;
.super Ljava/lang/Object;
.source "ModuleCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/service/common/ModuleCreator$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/cloud/service/common/Module;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/service/common/Module;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "module":Lcn/nubia/cloud/service/common/Module;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/cloud/service/common/ModuleType;->valueOf(I)Lcn/nubia/cloud/service/common/ModuleType;

    move-result-object v1

    .line 12
    .local v1, "type":Lcn/nubia/cloud/service/common/ModuleType;
    sget-object v2, Lcn/nubia/cloud/service/common/ModuleCreator$1;->$SwitchMap$cn$nubia$cloud$service$common$ModuleType:[I

    invoke-virtual {v1}, Lcn/nubia/cloud/service/common/ModuleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 20
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad module type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :pswitch_0
    sget-object v2, Lcn/nubia/cloud/service/common/SurfaceModule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "module":Lcn/nubia/cloud/service/common/Module;
    check-cast v0, Lcn/nubia/cloud/service/common/Module;

    .line 22
    .restart local v0    # "module":Lcn/nubia/cloud/service/common/Module;
    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    sget-object v2, Lcn/nubia/cloud/service/common/SyncModule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "module":Lcn/nubia/cloud/service/common/Module;
    check-cast v0, Lcn/nubia/cloud/service/common/Module;

    .line 18
    .restart local v0    # "module":Lcn/nubia/cloud/service/common/Module;
    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/service/common/ModuleCreator;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/service/common/Module;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/cloud/service/common/Module;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/service/common/ModuleCreator;->newArray(I)[Lcn/nubia/cloud/service/common/Module;

    move-result-object v0

    return-object v0
.end method
