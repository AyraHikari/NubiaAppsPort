.class Lcn/nubia/commonui/widget/NubiaSearchView$3;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 208
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$3;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 214
    :cond_0
    return-void
.end method
