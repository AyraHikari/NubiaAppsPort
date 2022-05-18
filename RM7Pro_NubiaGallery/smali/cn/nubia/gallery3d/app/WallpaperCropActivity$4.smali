.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setCropViewTileSource(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$loadBitmapTask:Landroid/os/AsyncTask;

.field final synthetic val$progressView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;->val$loadBitmapTask:Landroid/os/AsyncTask;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;->val$progressView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;->val$loadBitmapTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$4;->val$progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
