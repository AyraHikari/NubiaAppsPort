.class Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 618
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 619
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->access$200(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 624
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->access$300(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 627
    :cond_0
    return-void
.end method
