.class Lcn/nubia/video/player/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/n;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/n$g;->a:Lcn/nubia/video/player/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/n;Lcn/nubia/video/player/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/n$g;-><init>(Lcn/nubia/video/player/n;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/n$g;->a:Lcn/nubia/video/player/n;

    iget-object p1, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/n$g;->a:Lcn/nubia/video/player/n;

    iget-object p1, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/n$g;->a:Lcn/nubia/video/player/n;

    iget-object p1, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/n$g;->a:Lcn/nubia/video/player/n;

    iget-object p1, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
