.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$300(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 136
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$500(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 137
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$400(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$002(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 140
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$600(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$4;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .line 141
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$700(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$202(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 143
    :cond_0
    return-void
.end method
