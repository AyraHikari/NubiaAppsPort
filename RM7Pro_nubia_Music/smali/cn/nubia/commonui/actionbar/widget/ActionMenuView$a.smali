.class Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;Lcn/nubia/commonui/actionbar/widget/ActionMenuView$1;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView$a;-><init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method
