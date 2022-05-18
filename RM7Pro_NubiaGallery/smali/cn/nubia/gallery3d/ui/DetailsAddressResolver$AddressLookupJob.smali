.class Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatlng:[D

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method protected constructor <init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;[D)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 6

    .line 45
    new-instance v0, Lcn/nubia/gallery3d/util/ReverseGeocoder;

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcn/nubia/gallery3d/ui/DetailsAddressResolver;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->access$000(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
