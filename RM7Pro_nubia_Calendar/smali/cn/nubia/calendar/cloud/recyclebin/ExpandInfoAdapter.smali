.class public Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;,
        Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 52
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p4, :cond_0

    .line 60
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f03005c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 62
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;

    invoke-direct {v0, p4}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    .local v0, "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    .line 68
    .local v1, "item":Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    const/4 p3, 0x1

    .line 69
    :goto_1
    invoke-virtual {v0, v1, p3}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->bind(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;Z)V

    .line 70
    return-object p4

    .line 65
    .end local v0    # "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    .end local v1    # "item":Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;

    .restart local v0    # "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
    goto :goto_0

    .line 68
    .restart local v1    # "item":Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;
    :cond_1
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpandable"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    if-nez p3, :cond_0

    .line 101
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 103
    new-instance v0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;

    invoke-direct {v0, p3}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    .local v0, "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;->bind(ILjava/lang/String;)V

    .line 109
    return-object p3

    .line 106
    .end local v0    # "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;

    .restart local v0    # "holder":Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter$GroupViewHolder;
    goto :goto_0
.end method

.method public getTotalItemCount()I
    .locals 3

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "totalItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 36
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public updateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .local v0, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->mItemList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v0    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/cloud/recyclebin/ExpandInfoAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
