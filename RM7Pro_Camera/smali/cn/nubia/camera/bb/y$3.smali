.class Lcn/nubia/camera/bb/y$3;
.super Lcn/nubia/camera/extendedUI/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->d(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcn/nubia/camera/bb/y$3;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcn/nubia/camera/bb/y$3;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->d(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/y$3;->a:Lcn/nubia/camera/bb/y;

    .line 348
    invoke-static {v0}, Lcn/nubia/camera/bb/y;->e(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/y$3;->a:Lcn/nubia/camera/bb/y;

    .line 349
    invoke-static {v0}, Lcn/nubia/camera/bb/y;->f(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 350
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/g;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
