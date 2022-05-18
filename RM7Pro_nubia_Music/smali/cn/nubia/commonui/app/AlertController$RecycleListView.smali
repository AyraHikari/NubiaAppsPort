.class public Lcn/nubia/commonui/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/app/AlertController;
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

    .prologue
    .line 825
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 826
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 830
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 834
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 838
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 839
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
