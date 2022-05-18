.class final Lcn/nubia/music/ui/ThemeColor$1;
.super Landroid/support/v4/util/LruCache;
.source "ThemeColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/ThemeColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/ui/ThemeColor$1;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    return v0
.end method
