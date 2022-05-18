.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/content/res/Resources;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$finishActivityWhenDone:Z


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-boolean p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->val$finishActivityWhenDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 334
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setResult(I)V

    .line 336
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$6;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
