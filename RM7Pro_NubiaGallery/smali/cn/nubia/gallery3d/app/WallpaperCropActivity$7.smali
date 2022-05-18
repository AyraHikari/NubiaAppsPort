.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcn/nubia/gallery3d/app/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$finishActivityWhenDone:Z

.field final synthetic val$outHeight:I

.field final synthetic val$outWidth:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;IIZ)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$outWidth:I

    iput p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$outHeight:I

    iput-boolean p4, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$finishActivityWhenDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$outWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$outHeight:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 410
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setResult(I)V

    .line 412
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$7;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
