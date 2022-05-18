.class public Lcn/nubia/gallery3d/ui/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;,
        Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
    }
.end annotation


# instance fields
.field private mAddressLookupJob:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;Lcn/nubia/gallery3d/util/Future;)Lcn/nubia/gallery3d/util/Future;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcn/nubia/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private resolveAddress([D)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;-><init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;[D)V

    new-instance p1, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$1;-><init>(Lcn/nubia/gallery3d/ui/DetailsAddressResolver;)V

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method private updateLocation(Landroid/location/Address;)V
    .locals 5

    if-eqz p1, :cond_4

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 91
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 93
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 94
    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 95
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    .line 96
    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x7

    .line 97
    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x8

    .line 98
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 99
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x9

    aput-object p1, v1, v2

    const-string p1, ""

    :goto_0
    if-ge v3, v0, :cond_3

    .line 104
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-ne v3, v2, :cond_1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-ne v3, v2, :cond_2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mListener:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcn/nubia/gallery3d/util/Future;

    :cond_0
    return-void
.end method

.method public resolveAddress([DLcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 3

    .line 60
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mListener:Lcn/nubia/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .line 61
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->mContext:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->resolveAddress([D)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/DetailsAddressResolver;->resolveAddress([D)V

    :goto_0
    const/4 p2, 0x0

    .line 67
    aget-wide v0, p1, p2

    const/4 p2, 0x1

    aget-wide p1, p1, p2

    const-string v2, "(%f,%f)"

    invoke-static {v2, v0, v1, p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
