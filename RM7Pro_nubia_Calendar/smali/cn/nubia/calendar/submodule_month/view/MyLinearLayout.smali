.class public Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MyLinearLayout.java"


# instance fields
.field private index:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public otherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    return-void
.end method

.method public getListHeigth(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, "height":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 72
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 73
    goto :goto_0

    .line 74
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return v0
.end method

.method public getOtherList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    return-object v0
.end method

.method public initList()V
    .locals 3

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->getChildCount()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->index:I

    .line 42
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->index:I

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->index:I

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public initLists(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 58
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_1

    .line 63
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->otherList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public initLists(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 51
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_month/view/MyLinearLayout;->initLists(I)V

    .line 52
    return-void
.end method
