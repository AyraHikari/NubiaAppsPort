.class Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;
.super Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    .line 548
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 549
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 563
    packed-switch p1, :pswitch_data_0

    .line 571
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 566
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v1, v0}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$400(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 553
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/internal/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 554
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$200(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$300(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;)Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 556
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar$d;->a:Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->access$202(Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;Z)Z

    .line 558
    :cond_0
    return v0
.end method
