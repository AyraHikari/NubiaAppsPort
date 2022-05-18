.class public final Landroidx/core/content/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/a/f$b$a;,
        Landroidx/core/content/a/f$b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 475
    invoke-static {p0}, Landroidx/core/content/a/f$b$b;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 476
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 477
    invoke-static {p0}, Landroidx/core/content/a/f$b$a;->a(Landroid/content/res/Resources$Theme;)V

    :cond_1
    :goto_0
    return-void
.end method
