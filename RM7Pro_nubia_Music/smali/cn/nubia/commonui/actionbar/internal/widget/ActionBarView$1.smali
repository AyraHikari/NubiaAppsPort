.class Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;
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
    .line 138
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$1;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->access$000(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;)Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 145
    :cond_0
    return-void
.end method
