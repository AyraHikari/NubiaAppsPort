.class Lcn/nubia/commonui/widget/NubiaCharacterListView$5;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaCharacterListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iget-object v0, v0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iget-object v1, v0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;->a:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .line 554
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->access$600(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 555
    :cond_0
    return-void
.end method
