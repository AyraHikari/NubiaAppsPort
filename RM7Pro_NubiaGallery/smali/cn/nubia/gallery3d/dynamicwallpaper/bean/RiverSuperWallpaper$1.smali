.class synthetic Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper$1;
.super Ljava/lang/Object;
.source "RiverSuperWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->values()[Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->lock:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/RiverSuperWallpaper$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
