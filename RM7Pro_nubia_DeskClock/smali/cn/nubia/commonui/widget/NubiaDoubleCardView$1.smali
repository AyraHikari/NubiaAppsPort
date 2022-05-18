.class Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;
.super Ljava/lang/Object;
.source "NubiaDoubleCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaDoubleCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 115
    .local v0, "id":I
    sget v1, Lcn/nubia/commonui/R$id;->nubia_card1:I

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->setCardInUse(I)V

    .line 118
    :cond_0
    sget v1, Lcn/nubia/commonui/R$id;->nubia_card2:I

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->setCardInUse(I)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    iget-object v1, v1, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    iget-object v1, v1, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->mOnCardClickListener:Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaDoubleCardView$1;->this$0:Lcn/nubia/commonui/widget/NubiaDoubleCardView;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaDoubleCardView;->access$000(Lcn/nubia/commonui/widget/NubiaDoubleCardView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/commonui/widget/NubiaDoubleCardView$OnCardClickListener;->onCardClick(I)V

    .line 124
    :cond_2
    return-void
.end method
