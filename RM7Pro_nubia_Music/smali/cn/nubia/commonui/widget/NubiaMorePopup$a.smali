.class Lcn/nubia/commonui/widget/NubiaMorePopup$a;
.super Landroid/widget/BaseAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private b:[Ljava/lang/CharSequence;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 725
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 726
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->c:Landroid/view/LayoutInflater;

    .line 727
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    .line 728
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 757
    sget v0, Lcn/nubia/commonui/R$id;->nubia_more_popup_text:I

    .line 758
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 759
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)[Z

    move-result-object v1

    aget-boolean v1, v1, p3

    if-nez v1, :cond_0

    .line 762
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 763
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 768
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 766
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/nubia/commonui/widget/NubiaMorePopup$a;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 742
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 747
    if-nez p2, :cond_0

    .line 748
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->c:Landroid/view/LayoutInflater;

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_more_popup_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 752
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p2, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$a;->a(Ljava/lang/CharSequence;Landroid/view/View;I)V

    .line 753
    return-object p2
.end method
