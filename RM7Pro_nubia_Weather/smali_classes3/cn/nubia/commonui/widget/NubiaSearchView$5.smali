.class Lcn/nubia/commonui/widget/NubiaSearchView$5;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaSearchView;
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
    .line 646
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 649
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$400(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$500(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$600(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 652
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$700(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$800(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 654
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView$5;->this$0:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->access$900(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    goto :goto_0
.end method
