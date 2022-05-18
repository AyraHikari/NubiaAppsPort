.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1527
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V
    .locals 0

    .prologue
    .line 1527
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1540
    return-void
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1531
    if-eqz v0, :cond_0

    .line 1532
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1534
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
