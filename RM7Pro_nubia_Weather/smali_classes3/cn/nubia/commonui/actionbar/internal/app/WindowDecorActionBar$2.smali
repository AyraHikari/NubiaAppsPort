.class Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;
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
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$502(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .line 168
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar$2;->this$0:Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;->access$200(Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->requestLayout()V

    .line 169
    return-void
.end method
