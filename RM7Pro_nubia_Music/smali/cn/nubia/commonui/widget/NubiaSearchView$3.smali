.class Lcn/nubia/commonui/widget/NubiaSearchView$3;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->a:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 237
    :cond_0
    return-void
.end method
