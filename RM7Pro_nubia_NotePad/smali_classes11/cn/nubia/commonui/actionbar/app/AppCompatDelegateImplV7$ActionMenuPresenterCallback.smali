.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1568
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$900(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1569
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 1559
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1560
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 1561
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1563
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
