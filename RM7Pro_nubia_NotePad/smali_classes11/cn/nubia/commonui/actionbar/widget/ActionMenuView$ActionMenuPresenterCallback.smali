.class Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 633
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method
