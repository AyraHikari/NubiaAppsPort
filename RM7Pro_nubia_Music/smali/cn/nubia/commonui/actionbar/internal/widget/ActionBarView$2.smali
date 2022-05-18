.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .line 154
    invoke-static {v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/view/menu/ActionMenuItem;

    move-result-object v2

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 156
    :cond_0
    return-void
.end method
