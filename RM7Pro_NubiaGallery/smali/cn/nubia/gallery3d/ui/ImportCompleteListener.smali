.class public Lcn/nubia/gallery3d/ui/ImportCompleteListener;
.super Ljava/lang/Object;
.source "ImportCompleteListener.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;


# instance fields
.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ImportCompleteListener;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-void
.end method

.method private goToImportedAlbum()V
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "media-path"

    .line 53
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ImportCompleteListener;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    return-void
.end method

.method public onProgressComplete(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f10011d

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/ImportCompleteListener;->goToImportedAlbum()V

    goto :goto_0

    :cond_0
    const p1, 0x7f10011e

    .line 43
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ImportCompleteListener;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method
