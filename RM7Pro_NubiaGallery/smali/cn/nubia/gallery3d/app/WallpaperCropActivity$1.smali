.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/net/Uri;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->isMoving()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateViewCenter()V

    const/4 p1, 0x1

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$1;->val$imageUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V

    return-void
.end method
