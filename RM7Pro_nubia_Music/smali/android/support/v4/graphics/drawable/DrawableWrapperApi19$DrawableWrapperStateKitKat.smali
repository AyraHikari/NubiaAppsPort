.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
.source "DrawableWrapperApi19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateKitKat"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 56
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
