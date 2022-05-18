.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 118
    return-void
.end method

.method public getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 52
    return-void
.end method

.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 68
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTint(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 74
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 80
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 83
    :cond_0
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 86
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;

    invoke-direct {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    .line 89
    :cond_0
    return-object p1
.end method
