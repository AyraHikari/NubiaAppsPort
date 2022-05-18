.class Lcn/nubia/trafficcontrol/bean/ReportInfoBean$1;
.super Ljava/lang/Object;
.source "ReportInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/trafficcontrol/bean/ReportInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/trafficcontrol/bean/ReportInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/trafficcontrol/bean/ReportInfoBean;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    invoke-direct {v0, p1}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcn/nubia/trafficcontrol/bean/ReportInfoBean;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean$1;->a(Landroid/os/Parcel;)Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean$1;->a(I)[Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    move-result-object v0

    return-object v0
.end method
