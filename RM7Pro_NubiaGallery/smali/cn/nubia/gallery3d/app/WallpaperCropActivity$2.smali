.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/BitmapRegionTileSource$UriBitmapSource;->getLoadingState()Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object v0

    sget-object v1, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    const v1, 0x7f100295

    .line 142
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 141
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$2;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
