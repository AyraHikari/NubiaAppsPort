.class public Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;
.super Ljava/lang/Object;
.source "DynamicWallpaperManager.java"


# static fields
.field private static final ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;


# instance fields
.field private mPreviewWallpaperVideoName:Ljava/lang/String;

.field private mWallpaperVideoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    invoke-direct {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;
    .locals 1

    .line 9
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->ourInstance:Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;

    return-object v0
.end method


# virtual methods
.method public getPreviewWallpaperVideoName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->mPreviewWallpaperVideoName:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperVideoName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->mWallpaperVideoName:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamicWallpaper(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->mWallpaperVideoName:Ljava/lang/String;

    return-void
.end method

.method public setPreviewWallpaperVideoName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/gallery3d/dynamicwallpaper/manager/DynamicWallpaperManager;->mPreviewWallpaperVideoName:Ljava/lang/String;

    return-void
.end method
