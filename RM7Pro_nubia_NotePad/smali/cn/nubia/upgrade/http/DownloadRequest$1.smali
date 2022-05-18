.class final Lcn/nubia/upgrade/http/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/upgrade/http/DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 192
    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v0, p1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/DownloadRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 197
    new-array v0, p1, [Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/DownloadRequest$1;->newArray(I)[Lcn/nubia/upgrade/http/DownloadRequest;

    move-result-object v0

    return-object v0
.end method
