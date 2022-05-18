.class Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotePadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/adapter/NotePadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mAttrChecked:Landroid/widget/ImageView;

.field mAttrImage:Landroid/widget/ImageView;

.field mAttrLinearLayout:Landroid/widget/LinearLayout;

.field mAttrRecord:Landroid/widget/ImageView;

.field mAttrRemind:Landroid/widget/ImageView;

.field mAttrTime:Landroid/widget/TextView;

.field mAttrlabel:Landroid/widget/TextView;

.field mCheckBox:Landroid/widget/CheckBox;

.field mImgCount:Landroid/widget/TextView;

.field mImgFrameLayout:Landroid/view/View;

.field mListItemLayout:Landroid/widget/LinearLayout;

.field mMainTitle:Landroid/widget/TextView;

.field mSecondTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/notepad/adapter/NotePadListAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/adapter/NotePadListAdapter;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;->this$0:Lcn/nubia/notepad/adapter/NotePadListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/adapter/NotePadListAdapter;Lcn/nubia/notepad/adapter/NotePadListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/adapter/NotePadListAdapter;
    .param p2, "x1"    # Lcn/nubia/notepad/adapter/NotePadListAdapter$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcn/nubia/notepad/adapter/NotePadListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadListAdapter;)V

    return-void
.end method
