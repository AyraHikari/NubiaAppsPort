.class Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;
.super Landroid/os/AsyncTask;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/WallpaperCropActivity;->setCropViewTileSource(Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

.field final synthetic val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$moveToLeft:Z

.field final synthetic val$postExecute:Ljava/lang/Runnable;

.field final synthetic val$progressView:Landroid/view/View;

.field final synthetic val$touchEnabled:Z


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/WallpaperCropActivity;Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;Landroid/view/View;Landroid/content/Context;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$progressView:Landroid/view/View;

    iput-object p4, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$touchEnabled:Z

    iput-boolean p6, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$moveToLeft:Z

    iput-object p7, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$postExecute:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->loadInBackground()Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$progressView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;->getLoadingState()Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    move-result-object p1

    sget-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    if-ne p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    new-instance v0, Lcn/nubia/improve/photos/BitmapRegionTileSource;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$bitmapSource:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;

    invoke-direct {v0, v1, v2}, Lcn/nubia/improve/photos/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->setTileSource(Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 169
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$touchEnabled:Z

    invoke-virtual {p1, v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->setTouchEnabled(Z)V

    .line 170
    iget-boolean p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$moveToLeft:Z

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->this$0:Lcn/nubia/gallery3d/app/WallpaperCropActivity;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/WallpaperCropActivity;->mCropView:Lcn/nubia/improve/photos/views/CropViewWallpaper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->moveToLeft()V

    .line 175
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/WallpaperCropActivity$3;->val$postExecute:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
