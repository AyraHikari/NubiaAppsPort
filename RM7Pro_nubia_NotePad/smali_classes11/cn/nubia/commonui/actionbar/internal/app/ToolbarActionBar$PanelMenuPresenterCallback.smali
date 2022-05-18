.class final Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;
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
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 614
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 617
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 621
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$000(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 624
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
