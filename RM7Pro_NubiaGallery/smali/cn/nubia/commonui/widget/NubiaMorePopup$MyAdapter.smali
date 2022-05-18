.class Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mDataList:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 697
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 698
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    return-void
.end method

.method private initItem(Ljava/lang/CharSequence;Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f09010c

    .line 729
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 731
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object p1, p1, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    aget-boolean p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 734
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 735
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 737
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 738
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 719
    iget-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 723
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-direct {p0, p3, p2, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$MyAdapter;->initItem(Ljava/lang/CharSequence;Landroid/view/View;I)V

    return-object p2
.end method
