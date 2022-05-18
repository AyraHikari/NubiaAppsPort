.class public Lcn/nubia/touping/Adapter/HdmiNodesAdapter;
.super Landroid/widget/BaseAdapter;
.source "HdmiNodesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[HdmiNodesAdapter]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHdmiNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/Utils/hdmi/HdmiNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/Utils/hdmi/HdmiNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "hdmiNodes":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/Utils/hdmi/HdmiNode;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    .line 26
    return-void
.end method

.method private isCurrNode(Lcn/nubia/touping/Utils/hdmi/HdmiNode;)Z
    .locals 5
    .param p1, "node"    # Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getLastNode()Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    move-result-object v0

    .line 62
    .local v0, "lastNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    const-string v2, "[HdmiNodesAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastNode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v2, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v3, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v3, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    iget v3, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "viewHolder":Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 47
    iget-object v1, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;

    .end local v0    # "viewHolder":Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    invoke-direct {v0}, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;-><init>()V

    .line 49
    .restart local v0    # "viewHolder":Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    const v1, 0x7f0e00fa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;->hdmiText:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0e00fb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;->selectedView:Landroid/view/View;

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v2, v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;->hdmiText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;->selectedView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->mHdmiNodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    invoke-direct {p0, v1}, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;->isCurrNode(Lcn/nubia/touping/Utils/hdmi/HdmiNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-object p2

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    check-cast v0, Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcn/nubia/touping/Adapter/HdmiNodesAdapter$ViewHolder;
    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method
