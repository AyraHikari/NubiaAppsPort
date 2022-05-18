.class public Lcom/zte/mifavor/widget/PagerSecond$TabContainer;
.super Landroid/widget/LinearLayout;
.source "PagerSecond.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 1061
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 1057
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 1053
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 1048
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 1068
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$1500(Lcom/zte/mifavor/widget/PagerSecond;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1071
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1072
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1073
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1074
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1075
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1076
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x3fa147ae    # 1.26f

    goto :goto_1

    :pswitch_0
    const v0, 0x3fce147b    # 1.61f

    goto :goto_1

    :pswitch_1
    const v0, 0x3fd5c28f    # 1.67f

    goto :goto_1

    :pswitch_2
    const v0, 0x3faccccd    # 1.35f

    goto :goto_1

    :pswitch_3
    const v0, 0x3fd47ae1    # 1.66f

    .line 1105
    :goto_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/PagerSecond;->getMeasuredWidth()I

    move-result v2

    .line 1106
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    if-gtz v2, :cond_2

    goto/16 :goto_6

    .line 1111
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    int-to-float v4, v2

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$1602(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 1113
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    move p1, v1

    move v0, p1

    move v3, v0

    .line 1125
    :goto_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 1126
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1127
    iget-object v5, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v5}, Lcom/zte/mifavor/widget/PagerSecond;->access$1600(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/view/View;->measure(II)V

    .line 1129
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v0, v5

    .line 1130
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v6}, Lcom/zte/mifavor/widget/PagerSecond;->access$1600(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result v6

    .line 1133
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 1134
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    sub-int p1, v2, v0

    .line 1144
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$1700(Lcom/zte/mifavor/widget/PagerSecond;)Z

    move-result v0

    if-nez v0, :cond_6

    if-lez p1, :cond_6

    .line 1145
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v0

    div-int v0, v2, v0

    const/high16 v4, 0x40000000    # 2.0f

    if-lt v0, v3, :cond_5

    move p1, v1

    .line 1147
    :goto_3
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 1148
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1152
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v3

    div-int v3, v2, v3

    .line 1150
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1149
    invoke-virtual {v0, v3, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1157
    :cond_5
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v0

    div-int/2addr p1, v0

    move v0, v1

    .line 1159
    :goto_4
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1160
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1161
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p1

    .line 1162
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1168
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 1169
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/PagerSecond$TabContainer;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void

    .line 1107
    :cond_8
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
