.class Lcn/nubia/commonui/widget/NubiaCharacterListView$a;
.super Landroid/widget/BaseAdapter;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaCharacterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 604
    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->b:Landroid/content/Context;

    .line 605
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->c:Ljava/util/ArrayList;

    .line 606
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->c:Ljava/util/ArrayList;

    .line 637
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->notifyDataSetChanged()V

    .line 638
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 620
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 626
    if-nez p2, :cond_0

    .line 627
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->b:Landroid/content/Context;

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_char_list_view_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 630
    :cond_0
    sget v0, Lcn/nubia/commonui/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 631
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-object p2
.end method
