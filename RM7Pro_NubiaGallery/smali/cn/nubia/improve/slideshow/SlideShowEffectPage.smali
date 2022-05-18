.class public Lcn/nubia/improve/slideshow/SlideShowEffectPage;
.super Lcn/nubia/gallery3d/app/ActivityState;
.source "SlideShowEffectPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "SlideshowEffectPage"

.field private static mFirstPictureTimeChange:Z = false


# instance fields
.field private mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;

.field private mPendingSlide:Landroid/graphics/Bitmap;

.field private final mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mSaveBtn:Landroid/widget/ImageButton;

.field private mSlideShowEffectPageTopbarNavigation:Landroid/widget/ImageView;

.field private mSlideShowEffectPageTopbarTitle:Landroid/widget/TextView;

.field private mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mPendingSlide:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mIsActive:Z

    .line 79
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSaveBtn:Landroid/widget/ImageButton;

    .line 81
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)Lcn/nubia/improve/slideshow/SlideShowEffectView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/improve/slideshow/SlideShowEffectPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mPendingSlide:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/slideshow/SlideShowEffectPage;ILandroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setStateResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->onBackPressed()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/improve/slideshow/SlideShowEffectPage;ILandroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setStateResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->onBackPressed()V

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 1

    .line 202
    new-instance p1, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {p1, v0}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mModel:Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;

    return-void
.end method

.method private initializeViews()V
    .locals 4

    .line 206
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    .line 207
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowEffectView;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcn/nubia/improve/slideshow/SlideShowEffectView;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowEffectChooser;Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    .line 208
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mModel:Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$3;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    invoke-interface {v0, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;->nextSlide(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    return-void
.end method

.method public static setChangeFirstPictureTime(Z)V
    .locals 0

    .line 252
    sput-boolean p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mFirstPictureTimeChange:Z

    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mPendingSlide:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->next(Landroid/graphics/Bitmap;I)V

    .line 163
    sget-boolean v0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mFirstPictureTimeChange:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    sput-boolean v2, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mFirstPictureTimeChange:Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 117
    new-instance p2, Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->initializeViews()V

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->initializeData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 3

    .line 215
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->resetVisibility()V

    .line 217
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$4;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    const v2, 0x7f080055

    invoke-virtual {v0, v2, v1}, Lcn/nubia/toolbar/TopBarTitleLayout;->setNavigationIcon(ILandroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 225
    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/improve/slideshow/SlideShowEffectPage$5;

    invoke-direct {v2, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$5;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    .line 224
    invoke-virtual {v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setTitleText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/toolbar/TopBarTitleLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideShowEffectPageTopbarNavigation:Landroid/widget/ImageView;

    .line 234
    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->getTopBar()Lcn/nubia/toolbar/TopBarTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/toolbar/TopBarTitleLayout;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideShowEffectPageTopbarTitle:Landroid/widget/TextView;

    .line 235
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideShowEffectPageTopbarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideShowEffectPageTopbarNavigation:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onPause()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mIsActive:Z

    .line 181
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mModel:Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;

    invoke-interface {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;->pause()V

    .line 182
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->release()V

    .line 183
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->onPause()V

    .line 184
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 190
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mIsActive:Z

    .line 192
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mModel:Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;

    invoke-interface {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage$Model;->resume()V

    .line 193
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mSlideshowView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->onResume()V

    .line 194
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mPendingSlide:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->showPendingBitmap()V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->loadNextBitmap()V

    :goto_0
    return-void
.end method

.method public refreshRootPane()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcn/nubia/gallery3d/app/ActivityState;->refreshRootPane()V

    .line 259
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    return-void
.end method

.method public removeHandlerMessages()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setNatvigationBarDdjust()V
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->refreshRootPane()V

    return-void
.end method
