.class final Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;
.super Ljava/lang/Thread;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultWallpaperSize:Landroid/graphics/Point;

.field final synthetic val$sharedPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/graphics/Point;Landroid/app/WallpaperManager;)V
    .locals 0

    .line 793
    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$sharedPrefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iput-object p4, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$wallpaperManager:Landroid/app/WallpaperManager;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const-string v2, "wallpaper.width"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 797
    iget-object v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const-string v3, "wallpaper.height"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 798
    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$8;->val$wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v0, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    return-void
.end method
