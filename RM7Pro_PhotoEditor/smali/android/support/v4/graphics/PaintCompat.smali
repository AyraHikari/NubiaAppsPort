.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/graphics/PaintCompatApi14;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
