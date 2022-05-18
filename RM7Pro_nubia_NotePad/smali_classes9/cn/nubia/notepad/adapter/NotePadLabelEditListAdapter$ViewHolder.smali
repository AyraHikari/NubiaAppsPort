.class Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotePadLabelEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLabelTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->this$0:Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7f0f00b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->mLabelTitle:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0f00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->mLabelTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadLabelEditListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method
