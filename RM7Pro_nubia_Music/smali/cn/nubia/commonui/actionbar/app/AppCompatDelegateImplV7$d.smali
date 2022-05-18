.class final Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1497
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V
    .locals 0

    .prologue
    .line 1497
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1500
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1501
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1502
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    .line 1503
    if-eqz v3, :cond_1

    .line 1504
    if-eqz v0, :cond_3

    .line 1505
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget v4, v3, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-static {v0, v4, v3, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1506
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v0, v3, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1513
    :cond_1
    :goto_1
    return-void

    .line 1501
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1510
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v0, v3, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1517
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1519
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1520
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1523
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
