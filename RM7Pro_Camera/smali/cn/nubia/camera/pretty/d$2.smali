.class Lcn/nubia/camera/pretty/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0, p1}, Lcn/nubia/camera/pretty/d;->d(Lcn/nubia/camera/pretty/d;Z)Z

    .line 517
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/pretty/d;->e(Lcn/nubia/camera/pretty/d;Z)Z

    .line 518
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->i(Lcn/nubia/camera/pretty/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->q(Lcn/nubia/camera/pretty/d;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800f0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->q(Lcn/nubia/camera/pretty/d;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800f1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$2;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->r(Lcn/nubia/camera/pretty/d;)V

    return-void
.end method
