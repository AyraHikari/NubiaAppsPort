.class Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->animateToVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 604
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 616
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 608
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$000(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Lcn/nubia/commonui/actionbar/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setVisibility(I)V

    .line 611
    :cond_0
    return-void
.end method
