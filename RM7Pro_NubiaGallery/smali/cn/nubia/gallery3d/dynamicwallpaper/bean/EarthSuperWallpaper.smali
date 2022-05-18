.class public Lcn/nubia/gallery3d/dynamicwallpaper/bean/EarthSuperWallpaper;
.super Lcn/nubia/gallery3d/dynamicwallpaper/bean/BaseSuperWallpaper;
.source "EarthSuperWallpaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/BaseSuperWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "earth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_preview.mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EarthSuperWallpaper getPreviewVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constraints"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getPreviewVideoDuration(Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;)I
    .locals 2

    .line 31
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/EarthSuperWallpaper$1;->$SwitchMap$cn$nubia$gallery3d$dynamicwallpaper$bean$Scene:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/Scene;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0xba7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    :cond_1
    :goto_0
    return v1
.end method

.method public getVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "earth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
