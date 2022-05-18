.class public final Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


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

    .prologue
    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 338
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    .line 348
    :goto_0
    return-void

    .line 339
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 340
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    goto :goto_0

    .line 341
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 342
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    goto :goto_0

    .line 343
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 344
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    goto :goto_0

    .line 346
    :cond_3
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 459
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 460
    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 466
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 482
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 483
    return-void
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 452
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 580
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 500
    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 390
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 359
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .prologue
    .line 375
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 376
    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    .prologue
    .line 401
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 402
    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    .prologue
    .line 412
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 413
    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    .prologue
    .line 569
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 423
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 433
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 442
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 443
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

    .prologue
    .line 549
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    .line 550
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 552
    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
