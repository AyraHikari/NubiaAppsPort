.class public final Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
