.class Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V
    .locals 7
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .prologue
    const/4 v2, 0x0

    .line 184
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$000(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Lcn/nubia/commonui/actionbar/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .line 186
    invoke-static {v4}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$300(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 192
    :cond_0
    return-void
.end method
