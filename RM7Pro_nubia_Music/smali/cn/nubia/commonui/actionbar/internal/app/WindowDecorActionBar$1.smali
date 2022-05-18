.class Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$100(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 148
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .line 151
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$400(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$502(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$600(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$1;->a:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$600(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 161
    :cond_2
    return-void
.end method
