.class public abstract Lcn/nubia/collage/n/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/o/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcn/nubia/collage/n/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcn/nubia/collage/n/a;->c(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    const-string v0, "Load was success"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/collage/n/a$b;->e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/view/View;Lc/d/a/b/j/b;)V
    .locals 1

    invoke-static {p1}, Lcn/nubia/collage/n/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/nubia/collage/n/a$b;->e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcn/nubia/collage/n/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Load was cancelled"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/collage/n/a$b;->e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public abstract e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method
