.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$002(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$102(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 102
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$002(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 95
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;->access$102(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 96
    return-void
.end method
