.class public Lcn/nubia/improve/slideshow/SlideShowEffectView;
.super Lcn/nubia/gallery3d/ui/SlideshowView;
.source "SlideShowEffectView.java"

# interfaces
.implements Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowEffectView"


# instance fields
.field private mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

.field private mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

.field private mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

.field private mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

.field private sldeShowEffectPage:Lcn/nubia/improve/slideshow/SlideShowEffectPage;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowEffectChooser;Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlideshowView;-><init>()V

    if-eqz p2, :cond_0

    .line 40
    iput-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    .line 41
    invoke-virtual {p2, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->setChooserListener(Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;)V

    .line 43
    :cond_0
    new-instance p2, Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 45
    invoke-virtual {p2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getEffectName()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->CreateFiltering(Ljava/lang/String;)Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    if-eqz p2, :cond_1

    .line 48
    invoke-interface {p2, p0}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    .line 51
    :cond_1
    iput-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->sldeShowEffectPage:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    .line 53
    iget-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 54
    new-instance p2, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p3}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, p3, p1, p4}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;-><init>(Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;)V

    iput-object p2, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    :cond_2
    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->setViewSize(II)V

    .line 61
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    invoke-interface {v0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->next(Landroid/graphics/Bitmap;I)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->invalidate()V

    return-void
.end method

.method public onChangeEffect(Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->sldeShowEffectPage:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->removeHandlerMessages()V

    .line 86
    :cond_0
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1, p0}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->invalidate()V

    .line 91
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->setEffectName(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->Save()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->Stop()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->Pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowPlayMusic:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->Start()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->setChooserListener(Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->release()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mEffectChooser:Lcn/nubia/improve/slideshow/SlideShowEffectChooser;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lcn/nubia/improve/slideshow/SlideShowEffectChooser;->setChooserListener(Lcn/nubia/improve/slideshow/SlideShowEffectChooser$EffectChooserListener;)V

    :cond_1
    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectView;->mSlideShowFiltering:Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    invoke-interface {v0, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->invalidate()V

    :cond_0
    return-void
.end method
