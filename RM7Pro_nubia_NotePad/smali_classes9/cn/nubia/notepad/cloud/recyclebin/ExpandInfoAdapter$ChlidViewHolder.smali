.class final Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;
.super Ljava/lang/Object;
.source "ExpandInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChlidViewHolder"
.end annotation


# instance fields
.field attributeLayout:Landroid/widget/RelativeLayout;

.field checkBox:Landroid/widget/CheckBox;

.field checklist:Landroid/widget/ImageView;

.field classifyImage:Landroid/widget/ImageView;

.field image:Landroid/widget/ImageView;

.field isCheckList:Landroid/widget/ImageView;

.field layout:Landroid/widget/RelativeLayout;

.field record:Landroid/widget/ImageView;

.field remind:Landroid/widget/ImageView;

.field time:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field titleLayout:Landroid/widget/LinearLayout;

.field titleView:Landroid/widget/TextView;

.field topImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const v0, 0x7f0f018e

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 318
    const v0, 0x7f0f018f

    .line 319
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checklist:Landroid/widget/ImageView;

    .line 320
    const v0, 0x7f0f00dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->title:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0f018c

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->topImage:Landroid/widget/ImageView;

    .line 323
    const v0, 0x7f0f018a

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->classifyImage:Landroid/widget/ImageView;

    .line 325
    const v0, 0x7f0f00e2

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->record:Landroid/widget/ImageView;

    .line 327
    const v0, 0x7f0f00e3

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->remind:Landroid/widget/ImageView;

    .line 329
    const v0, 0x7f0f0191

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->image:Landroid/widget/ImageView;

    .line 331
    const v0, 0x7f0f00e1

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->isCheckList:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f0f00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->time:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0f00e7

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 336
    const v0, 0x7f0f0188

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->layout:Landroid/widget/RelativeLayout;

    .line 338
    const v0, 0x7f0f0190

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->attributeLayout:Landroid/widget/RelativeLayout;

    .line 342
    return-void
.end method


# virtual methods
.method bind(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;Z)V
    .locals 2
    .param p1, "item"    # Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;
    .param p2, "isLastChild"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/ExpandInfoAdapter$ChlidViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method
