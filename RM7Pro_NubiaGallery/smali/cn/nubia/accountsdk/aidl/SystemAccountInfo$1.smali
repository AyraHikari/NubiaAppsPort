.class Lcn/nubia/accountsdk/aidl/SystemAccountInfo$1;
.super Ljava/lang/Object;
.source "SystemAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/SystemAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/accountsdk/aidl/SystemAccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accountsdk/aidl/SystemAccountInfo;
    .locals 2

    .line 108
    new-instance v0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;-><init>(Landroid/os/Parcel;Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/accountsdk/aidl/SystemAccountInfo;
    .locals 0

    .line 113
    new-array p1, p1, [Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo$1;->newArray(I)[Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    move-result-object p1

    return-object p1
.end method
