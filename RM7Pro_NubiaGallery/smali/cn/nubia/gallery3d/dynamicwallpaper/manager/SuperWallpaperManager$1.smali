.class synthetic Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;
.super Ljava/lang/Object;
.source "SuperWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

.field static final synthetic $SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$SuperWallpaper:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 134
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->values()[Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$SuperWallpaper:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->river:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$SuperWallpaper:[I

    sget-object v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->earth:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :catch_1
    invoke-static {}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->values()[Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    :try_start_2
    sget-object v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v2, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->aod_to_lock:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->launcher_to_aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->lock_to_aod:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->lock_to_launcher:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/SuperWallpaperManager$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    sget-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->lock:Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
