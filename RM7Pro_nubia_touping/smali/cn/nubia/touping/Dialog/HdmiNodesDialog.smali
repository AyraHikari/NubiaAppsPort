.class public Lcn/nubia/touping/Dialog/HdmiNodesDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "HdmiNodesDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[HdmiNodesDialog]"


# instance fields
.field private mAdapter:Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

.field private mCancelBn:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mEmpty:Z

    .line 33
    iput-object p1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mContext:Landroid/content/Context;

    .line 34
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Lcn/nubia/touping/Adapter/HdmiNodesAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mAdapter:Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getAllHdmiNodes([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "hdmiNodes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/Utils/hdmi/HdmiNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/Utils/hdmi/HdmiNode;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, p1, v4

    .line 143
    .local v3, "nodeData":Ljava/lang/String;
    new-instance v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    invoke-direct {v2, v3}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "node":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 146
    .local v0, "hdmiNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    if-ne v7, v8, :cond_0

    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    if-ne v7, v8, :cond_0

    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    if-ne v7, v8, :cond_0

    .line 149
    iget v6, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    iget v7, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    if-gt v6, v7, :cond_1

    .line 150
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "hdmiNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v2    # "node":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    .end local v3    # "nodeData":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getFilteredHdmiNodes([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "hdmiNodes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/Utils/hdmi/HdmiNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/Utils/hdmi/HdmiNode;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v3, p1, v4

    .line 117
    .local v3, "nodeData":Ljava/lang/String;
    new-instance v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    invoke-direct {v2, v3}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "node":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    invoke-virtual {v2}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->isAbove1080p()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->isAbove60Fps()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->isSupportLwRatio()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .line 124
    .local v0, "hdmiNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    if-ne v7, v8, :cond_2

    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    if-ne v7, v8, :cond_2

    iget v7, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    iget v8, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    if-ne v7, v8, :cond_2

    .line 127
    iget v6, v0, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    iget v7, v2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    if-gt v6, v7, :cond_0

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v0    # "hdmiNode":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v2    # "node":Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    .end local v3    # "nodeData":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private init()V
    .locals 6

    .prologue
    .line 44
    const v3, 0x7f0e00f8

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mListView:Landroid/widget/ListView;

    .line 45
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->readNode()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "rawData":Ljava/lang/String;
    const-string v3, "[HdmiNodesDialog]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read hdmi node : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mEmpty:Z

    .line 49
    const-string v3, "[HdmiNodesDialog]"

    const-string v4, "hdmi node is null, please plug hdmi first."

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "hdmiNodes":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 54
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v3

    new-instance v4, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {v4, v5}, Lcn/nubia/touping/Utils/hdmi/HdmiNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->setLastNode(Lcn/nubia/touping/Utils/hdmi/HdmiNode;)V

    .line 56
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->getFilteredHdmiNodes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/Utils/hdmi/HdmiNode;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-direct {p0, v0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->getAllHdmiNodes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    :cond_2
    new-instance v3, Lcn/nubia/touping/Dialog/HdmiNodesDialog$1;

    invoke-direct {v3, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$1;-><init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    new-instance v3, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

    iget-object v4, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcn/nubia/touping/Adapter/HdmiNodesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mAdapter:Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

    .line 79
    iget-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mAdapter:Lcn/nubia/touping/Adapter/HdmiNodesAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;

    invoke-direct {v4, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$2;-><init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    const v3, 0x7f0e00f9

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mCancelBn:Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mCancelBn:Landroid/view/View;

    new-instance v4, Lcn/nubia/touping/Dialog/HdmiNodesDialog$3;

    invoke-direct {v4, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$3;-><init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 163
    iget-boolean v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mEmpty:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f080036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->show()V

    goto :goto_0
.end method
