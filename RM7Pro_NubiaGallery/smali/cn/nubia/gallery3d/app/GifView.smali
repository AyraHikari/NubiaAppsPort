.class public Lcn/nubia/gallery3d/app/GifView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/GifView$SampleView;
    }
.end annotation


# static fields
.field private static final MAX_HALF_SIZE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

.field navShow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/GifView;->navShow:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/GifView;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GifView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/app/GifView;Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GifView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/GifView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/app/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public HideNav()V
    .locals 2

    .line 86
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3706

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public ShowNav()V
    .locals 2

    .line 113
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2700

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->HideNav()V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 68
    new-instance v0, Lcn/nubia/gallery3d/app/GifView$SampleView;

    invoke-direct {v0, p0, p0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;-><init>(Lcn/nubia/gallery3d/app/GifView;Landroid/content/Context;Landroid/net/Uri;)V

    .line 69
    new-instance p1, Lcn/nubia/gallery3d/app/GifView$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/GifView$1;-><init>(Lcn/nubia/gallery3d/app/GifView;)V

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/GifView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GifView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 213
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 214
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/GifView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x480

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 208
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method
