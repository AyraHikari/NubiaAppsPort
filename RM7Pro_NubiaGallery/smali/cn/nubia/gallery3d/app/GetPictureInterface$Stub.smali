.class public abstract Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;
.super Landroid/os/Binder;
.source "GetPictureInterface.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/GetPictureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/GetPictureInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.gallery3d.app.GetPictureInterface"

.field static final TRANSACTION_getPaths:I = 0x1

.field static final TRANSACTION_setPaths:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.gallery3d.app.GetPictureInterface"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/gallery3d/app/GetPictureInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.gallery3d.app.GetPictureInterface"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcn/nubia/gallery3d/app/GetPictureInterface;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcn/nubia/gallery3d/app/GetPictureInterface;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/gallery3d/app/GetPictureInterface;
    .locals 1

    .line 151
    sget-object v0, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;->sDefaultImpl:Lcn/nubia/gallery3d/app/GetPictureInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/gallery3d/app/GetPictureInterface;)Z
    .locals 1

    .line 144
    sget-object v0, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;->sDefaultImpl:Lcn/nubia/gallery3d/app/GetPictureInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 145
    sput-object p0, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub$Proxy;->sDefaultImpl:Lcn/nubia/gallery3d/app/GetPictureInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "cn.nubia.gallery3d.app.GetPictureInterface"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 72
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;->setPaths(Ljava/util/List;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 64
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GetPictureInterface$Stub;->getPaths()Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0
.end method
