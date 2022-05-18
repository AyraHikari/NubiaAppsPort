.class final Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 598
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->b:Z

    if-eqz v0, :cond_0

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->b:Z

    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 604
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 607
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->b:Z

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$a;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
