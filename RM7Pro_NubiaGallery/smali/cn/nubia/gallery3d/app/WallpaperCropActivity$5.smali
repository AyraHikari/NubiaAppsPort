.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setWallpaper(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$bounds:Landroid/graphics/Point;

.field final synthetic val$finishActivityWhenDone:Z


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/graphics/Point;Z)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->val$bounds:Landroid/graphics/Point;

    iput-boolean p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->val$finishActivityWhenDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->val$bounds:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->val$bounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 308
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setResult(I)V

    .line 310
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$5;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
