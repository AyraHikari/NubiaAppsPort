.class final Lpl/droidsonroids/gif/GifViewUtils;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifViewUtils$InitResult;
    }
.end annotation


# static fields
.field static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "src"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const/4 v2, 0x0

    .line 32
    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    invoke-static {p0, p2, p1}, Lpl/droidsonroids/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    return v2
.end method

.method static initImageView(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/GifViewUtils$InitResult;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 23
    invoke-static {p0, p1, v1}, Lpl/droidsonroids/gif/GifViewUtils;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v1

    .line 24
    invoke-static {p0, p1, v0}, Lpl/droidsonroids/gif/GifViewUtils;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    .line 25
    invoke-static {p0, p1, p2, p3}, Lpl/droidsonroids/gif/GifViewUtils;->isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result p0

    .line 26
    new-instance p1, Lpl/droidsonroids/gif/GifViewUtils$InitResult;

    invoke-direct {p1, v1, v0, p0}, Lpl/droidsonroids/gif/GifViewUtils$InitResult;-><init>(IIZ)V

    return-object p1

    .line 28
    :cond_0
    new-instance p0, Lpl/droidsonroids/gif/GifViewUtils$InitResult;

    invoke-direct {p0, v0, v0, v0}, Lpl/droidsonroids/gif/GifViewUtils$InitResult;-><init>(IIZ)V

    return-object p0
.end method

.method static isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcn/nubia/gallery3d/R$styleable;->GifView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method static setGifImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static setResource(Landroid/widget/ImageView;ZI)Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    :try_start_0
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 53
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method
