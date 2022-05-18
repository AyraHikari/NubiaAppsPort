.class final Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 637
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$b;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
