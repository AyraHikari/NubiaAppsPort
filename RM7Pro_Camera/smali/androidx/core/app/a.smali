.class public Landroidx/core/app/a;
.super Landroidx/core/content/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/a$a;
    }
.end annotation


# static fields
.field private static a:Landroidx/core/app/a$a;


# direct methods
.method public static a()Landroidx/core/app/a$a;
    .locals 1

    .line 169
    sget-object v0, Landroidx/core/app/a;->a:Landroidx/core/app/a$a;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {p0}, Landroidx/core/app/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method
