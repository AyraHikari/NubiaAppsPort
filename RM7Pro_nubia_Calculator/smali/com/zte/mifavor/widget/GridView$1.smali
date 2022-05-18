.class Lcom/zte/mifavor/widget/GridView$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/GridView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/GridView$1$ItemRecod;
    }
.end annotation


# instance fields
.field private mCurrentfirstVisibleItem:I

.field private recordSp:Landroid/util/SparseArray;

.field final synthetic this$0:Lcom/zte/mifavor/widget/GridView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GridView;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->recordSp:Landroid/util/SparseArray;

    .line 130
    iput v0, p0, Lcom/zte/mifavor/widget/GridView$1;->mCurrentfirstVisibleItem:I

    return-void
.end method

.method private getScrollY()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_0
    iget v2, p0, Lcom/zte/mifavor/widget/GridView$1;->mCurrentfirstVisibleItem:I

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/zte/mifavor/widget/GridView$1;->recordSp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;

    if-eqz v2, :cond_0

    .line 176
    iget v2, v2, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;->height:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/GridView$1;->recordSp:Landroid/util/SparseArray;

    iget v2, p0, Lcom/zte/mifavor/widget/GridView$1;->mCurrentfirstVisibleItem:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;-><init>(Lcom/zte/mifavor/widget/GridView$1;)V

    .line 183
    :cond_2
    iget p0, v0, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;->top:I

    sub-int/2addr v1, p0

    return v1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 152
    iput p2, p0, Lcom/zte/mifavor/widget/GridView$1;->mCurrentfirstVisibleItem:I

    const/4 p3, 0x0

    .line 153
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p3, p0, Lcom/zte/mifavor/widget/GridView$1;->recordSp:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;

    if-nez p3, :cond_0

    .line 157
    new-instance p3, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;

    invoke-direct {p3, p0}, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;-><init>(Lcom/zte/mifavor/widget/GridView$1;)V

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p3, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;->height:I

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    iput p4, p3, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;->top:I

    .line 161
    iget-object p4, p0, Lcom/zte/mifavor/widget/GridView$1;->recordSp:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 162
    iget p2, p3, Lcom/zte/mifavor/widget/GridView$1$ItemRecod;->height:I

    if-eqz p2, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GridView$1;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    .line 164
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p3, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-static {p3}, Lcom/zte/mifavor/widget/GridView;->access$200(Lcom/zte/mifavor/widget/GridView;)I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/zte/mifavor/widget/GridView;->access$202(Lcom/zte/mifavor/widget/GridView;I)I

    .line 166
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/GridView;->access$200(Lcom/zte/mifavor/widget/GridView;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setScrollOffsetY(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    const-string p1, "-QW-View-SpringGV"

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged in, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GridView;->access$100(Lcom/zte/mifavor/widget/GridView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 139
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p1, p1, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    invoke-virtual {p1}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->isAppBarCollapsed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/GridView;->canScrollVertically(I)Z

    move-result p1

    .line 141
    iget-object v0, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GridView;->canScrollVertically(I)Z

    move-result v0

    const-string v1, "-QW-View-SpringGV"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", canScrollUp = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", canScollDown = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    const/16 p2, 0x3ea

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->onScrollStateChanged(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const-string p0, "-QW-View-SpringGV"

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged out, state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "-QW-View-SpringGV"

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged don\'t use animation, mIsUseSpring = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/widget/GridView$1;->this$0:Lcom/zte/mifavor/widget/GridView;

    invoke-static {p0}, Lcom/zte/mifavor/widget/GridView;->access$100(Lcom/zte/mifavor/widget/GridView;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
