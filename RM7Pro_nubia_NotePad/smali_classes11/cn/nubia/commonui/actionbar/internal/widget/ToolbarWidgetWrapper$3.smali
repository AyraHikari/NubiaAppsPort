.class Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$3;
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
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 620
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 623
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$3;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$000(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Lcn/nubia/commonui/actionbar/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setVisibility(I)V

    .line 624
    return-void
.end method
