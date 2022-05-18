.class public Lcom/zte/mifavor/widget/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1015
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1020
    invoke-static {}, Lcom/zte/mifavor/widget/AlertController;->access$900()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1025
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1031
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 1012
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1036
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1037
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    .line 1039
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 0

    .line 1045
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return p0
.end method
